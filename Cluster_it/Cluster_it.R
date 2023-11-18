# Load packages
library(shiny)
library(factoextra)
library(cluster)
library(datasets)
library(ggplot2)

# Define UI
ui <- fluidPage(
  
  # Custom css styles
  tags$head(
    tags$style(HTML("
             body{
             font-family: 'Arial', sans-serif;
             background-color: #f4f4f4;
             }
             
             .container-fluid {
             margin-top:20px;
             }
             
             .well {
             background-color: #fff;
             border: 1px solid #ddd;
             border-radius: 10px;
             }
             
             .well img {
             max-width: 100%:
             border-radius: 15px:
             box-shadow: 0 0 10px rgba(0, 0, 0.1):
             }
             }
             "))
  ),
  
  # App title
  titlePanel("K-means clustering app"),
    h4("This app provides a visual representation of the results
       of k-means clustering for the selected data."),
  
  # Sidebar layout
  sidebarLayout(
    # Sidebar panel
    sidebarPanel(
      # Display an image
      img(src = "K-Means-clustering.png", height = 400, width = 527),
           # This cartoon adds a visual element, injecting a touch of humor while representing the clustering concept, making the app visually engaging.
      
      # Slider input for the number of clusters
      sliderInput("k", "Number of clusters:", min = 2, max = 10, value = 4),
          # This feature allows users to intuitively tweak the k-means clustering, aiding in their understanding of the data structure. This feature enhances user engagement and facilitates a deeper understanding of how varying the number of clusters impacts the results.
    
      # Select input for variables to include
      selectInput("data", "Choose a dataset:", choices = c("faithful", "mtcars", "USArrests"))
    ), 
          #  This feature allows users to choose from different datasets (`faithful`, `mtcars`, `USArrests`) for k-means clustering. It provides flexibility, and facilitating comparative analysis and a deeper exploration of clustering behavior across different domains.
    
    # Main panel
    mainPanel(
      # Plot output for clustering results
      plotOutput("plot", height = "700px"),
      downloadButton("download_plot", "Download Plot")
      
    )
  ) 
)


# Define server function
server <- function(input, output) {
  # Reactive expression for scaled data
  scaled_data <- reactive({
    # Subset the data by selected variables
    df <- switch(input$data,
                 "faithful" = faithful,
                 "mtcars" = mtcars,
                 "USArrests" = USArrests)
    
    # Select only numeric columns
    if(!all(sapply(df, is.numeric))) {
      stop()
    }
    # Scale the data
    scale(df)
  })
  
  # Reactive expression for k-means clustering
  km <- reactive({
    # Perform k-means clustering with the selected number of clusters
    kmeans(scaled_data(), centers = input$k, nstart = 25)
  })
  
  # Render plot output
  output$plot <- renderPlot({
    # Visualize the clustering results
    # This feature provides an intuitive representation of the k-means clustering, aiding users in understanding the data structure.
    plot <- fviz_cluster(km(), data = scaled_data()) +
      theme(axis.title.x = element_text(size = 24),
            axis.title.y = element_text(size = 24),
            plot.title = element_text(size = 30),
            legend.text = element_text(size = 24),
            legend.title = element_text(size = 29))
    print(plot)
    
    output$download_plot <- downloadHandler(
      filename = function() {
        paste("clustering_plot", Sys.Date(), ".png", sep = "")
      },
      content = function(file) {
        # Save the clustering plot as an image file
        ggsave(file, fviz_cluster(km(), data = scaled_data()),
               device = "png")
      }
    )
    
  })
}

# Run the app
shinyApp(ui = ui, server = server)
