# K-means Clustering Shiny App

## Overview
This Shiny app provides a user-friendly interface for visualizing k-means clustering results on different datasets. Users can explore clustering behavior, adjust parameters interactively, and gain insights into the underlying data structure.

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
To run the app locally, make sure you have R and the required packages installed. (Namely, `shiny`, `factoextra`, `cluster`, `datasets`) Then, run the `shiny::runApp()` command in your R console.

## Deployment
The app is deployed on [shinyapps.io](https://your-shinyapp-link-here). Visit the deployed app to interact with the k-means clustering interface.

## How to Use
1. Choose a dataset from the dropdown menu.
2. Adjust the number of clusters using the slider.
3. Explore the clustering results in the interactive plot.

## Additional Information
For more details on the implementation, refer to the R scripts `ui.R` and `server.R` in this repository.

## Credits

Image credits: https://realpython.com/k-means-clustering-python/
https://realpython.com/cdn-cgi/image/width=960,format=auto/https://files.realpython.com/media/K-Means-Clustering-in-Python_Watermarked.70101a29a2a2.jpg

---

*This app is developed by Jasleen Kaur Matta for the UBC STAT545 102 class. For questions or feedback, please feel free to contact.*
