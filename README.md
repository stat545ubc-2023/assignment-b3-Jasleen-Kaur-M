# K-means Clustering Shiny App

## Overview
This Shiny app provides a user-friendly interface for visualizing k-means clustering results on different datasets. Users can explore clustering behavior, adjust parameters interactively, and gain insights into the underlying data structure.

You can find the working website to my app here. [Cluster_it](https://clusterit.shinyapps.io/Cluster_it/)

## Features

### 1. K-Means Clustering Visualization
- Purpose: This feature offers an intuitive representation of k-means clustering, aiding users in understanding the data structure.
- This visualization provides a powerful tool for exploratory data analysis and pattern recognition.

### 2. Slider Input for Number of Clusters (k)
- Purpose: Allows users to intuitively tweak the k-means clustering, aiding in their understanding of the data structure.
- This enhances user engagement and facilitates a deeper understanding of how varying the number of clusters impacts the results.

### 3. Select Input for Dataset
- Purpose: Enables users to choose from different datasets (`faithful`, `mtcars`, `USArrests`) for k-means clustering, promoting flexibility and comparative analysis.
- This provides versatility, facilitating comparative analysis and a deeper exploration of clustering behavior across different domains.

### Cartoon Image
- Purpose: Adds a visual element, injecting a touch of humor while representing the clustering concept.
- This enhances the visual appeal, making the app more engaging and enjoyable.

## Getting Started
To run the app locally, make sure you have R and the required packages installed. (Namely, `shiny`, `factoextra`, `cluster`, `datasets`, `ggplot2`) Then, run the `shiny::runApp()` command or click the "Run App" button in your R console.

## How to Use
1. Clone this repository in your local machine.
2.Install the following packages: `shiny`, `factoextra`, `cluster`
`datasets`, `ggplot2`.
3. Open the R script (`Cluster_it.R`)
4. Run the app by clicking on the 'Run app' button

On the shiny app page:

1. Choose a dataset from the dropdown menu.
2. Adjust the number of clusters using the slider.
3. Explore the clustering results in the interactive plot.

To save the desired plot:

1. Click the download plot button.
2. Change the name of the file (if required).
3. Change location (if required).
4. Click Save.

## Additional Information
For more details on the implementation, refer to the R scripts `ui.R` and `server.R` in this repository.

## Credits

# Dataset source:
All the dataset used are included as part of the R environment. 

# Image credits:
- https://realpython.com/k-means-clustering-python/

- https://realpython.com/cdn-cgi/image/width=960,format=auto/https://files.realpython.com/media/K-Means-Clustering-in-Python_Watermarked.70101a29a2a2.jpg

---

*This app is developed by Jasleen Kaur Matta for the UBC STAT545 102 class. For questions or feedback, please feel free to contact.*
