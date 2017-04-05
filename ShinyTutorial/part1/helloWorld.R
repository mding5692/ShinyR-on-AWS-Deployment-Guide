# Setting up app ui
ui <- fluidPage("Hello World")

# Setting up app server
server <- function(input, output) {}

# Creating shiny app
shinyApp(ui=ui, server=server) # Might tell you to re-update again
