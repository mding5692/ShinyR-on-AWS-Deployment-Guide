# Uses below files 
quantmodHelperLocation = "../Helper_Functions/quantmodHelper.R"
source(quantmodHelperLocation)

# SERVER
shinyServer(function(input, output) {

  output$plot <- renderPlot({
    # make sure requirements are met, else displays empty screen
    req(input$symb)
    
    data <- getSymbols(input$symb, src = "yahoo", 
      from = input$dates[1],
      to = input$dates[2],
      auto.assign = FALSE)
                 
    chartSeries(data, theme = chartTheme("white"), 
      type = "line", log.scale = input$log, TA = NULL)
  })
  
})