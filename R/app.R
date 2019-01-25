library(shiny)

ui <- fluidPage(
  sliderInput(inputId="pop", "City Population", value=100000, min=5000, max=1000000),
  plotOutput(outputId="plot")
)

server <- function(input, output) {
cities <- read.csv("/Users/tony/cities.csv")

output$plot <- renderPlot({
  centres <- cities[cities$pop >= input$pop,];
  plot(centres$lon, centres$lat, xlab="Longitude", ylab="Latitude" )
  })
}

shinyApp(ui=ui, server=server)
