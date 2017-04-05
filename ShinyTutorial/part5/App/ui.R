# User chooses possible ethnicity
ethnicChoices <- c("% White", "% Black", "% Hispanic", "% Asian")

shinyUI(fluidPage(
  titlePanel("Playing with Reactive output"),
  sidebarLayout(
    sidebarPanel(
    # Description
    helpText("Create maps showing demographics with info from 2010 US Census"),
    
    # Select box for selecting ethnicity
    selectInput("selectedEthnicity",
      label="Select an ethnicity",
      choices = ethnicChoices,
      selected = ethnicChoices[1]
    ),
    
    # Slider for selecting %
    sliderInput("range",
      label = "range of interest",
      min = 0, max = 100, value = c(0,100)
      )
    ),
    
    # Shows results
    mainPanel(
      textOutput("result"),
      plotOutput("map")
      )
  )
))