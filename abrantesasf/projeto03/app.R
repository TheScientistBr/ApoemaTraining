# Global variables can go here
n <- 10


# Define the UI
ui <- bootstrapPage(
  numericInput('n', 'Tamanho da amostra', n),
  plotOutput('plot')
)


# Define the server code
server <- function(input, output) {
  output$plot <- renderPlot({
    hist(rnorm(runif(input$n)))
  })
}

# Return a Shiny app object
shinyApp(ui = ui, server = server)