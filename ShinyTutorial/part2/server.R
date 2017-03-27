# Run setup.R before to setup all libraries

# Defines server function for Shiny app
shinyServer(function(input, output) {
  
  # Reactive input, which re-executes automatically when inputs change
  output$distPlot <- renderPlot({
    x    <- faithful[, 2]  # Old Faithful Geyser data
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = 'darkgray', border = 'white')
  })
  
})