# modify below to change locations for data and helper functions, have to set wd to part5 
dataLocation <- "../Data/counties.rds"
helperLocation <- "../Helper_Functions/mapDisplayFunctions.R"

counties <- readRDS(dataLocation) # Uses 2010 US Census Counties Dataset
source(helperLocation) # Uses helper functions for displaying map

# Server displays map
shinyServer(function(input,output) {
  # Shows what you selected
  output$result <- renderText({
    paste("You have selected: ", input$range[1], "to", input$range[2], input$selectedEthnicity)
  })
  
  # Shows the map
  output$map <- renderPlot({
    # switches data based on selected ethnicity
    data <- switch(input$selectedEthnicity,
        "% White" = counties$white,
        "% Black" = counties$black, 
        "% Hispanic" = counties$hispanic,
        "% Asian" = counties$asian
        )
    percent_map(var=data, color="darkgreen", legend.title=input$selectedEthnicity, max= input$range[2], min=input$range[1])
  })
})