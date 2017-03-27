# Run setup.R before to setup all libraries

# Defines UI for Shiny App
shinyUI(fluidPage(
    
  # App title
  titlePanel("Shiny Histogram Web App Example"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30)
    ),    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )

  ))