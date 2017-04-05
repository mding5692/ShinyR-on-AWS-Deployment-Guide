# Uses below files 
quantmodHelperLocation = "../Helper_Functions/quantmodHelper.R"
source(quantmodHelperLocation)

# SERVER
shinyServer(function(input, output) {
  # Reactive expression <- updates value whenever original widget changes
  dataInput <- reactive({
    getSymbols(input$symb, src = "yahoo", 
      from = input$dates[1],
      to = input$dates[2],
      auto.assign = FALSE)
  })

  # adjusts data if needed
  adjustedInput <- reactive({
    if (!input$adjust) return(dataInput())
    adjust(dataInput())
  })
  
  # Plots it when loaded
  output$plot <- renderPlot({
    # make sure requirements are met, else displays empty screen
    req(input$symb)
    chartSeries(adjustedInput(), theme = chartTheme("white"), 
              type = "line", log.scale = input$log, TA = NULL)
  })
  
})