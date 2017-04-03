shinyUI(
  fluidPage(
    titlePanel("This is a title"),
    
    sidebarLayout(
      # position="right", # pushes sidebar to the right
      sidebarPanel(
        "This is a sidebar",
        code("code displays your text similar to computer code")
      ),
      mainPanel(
        h1("Look here", align="center"),
        "This is where the main content is",
        p("Look more random paragraph text"),
        img(src="", alt="This should be an image")
      )
    )
  )
)