#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Global variables can go here
n <- 10


# Define the UI
ui <- bootstrapPage(
  numericInput('n', 'Altere o tamanho da amostra e veja o histograma se aproximar da normal:', n),
  plotOutput('plot')
)


# Define the server code
server <- function(input, output) {
  output$plot <- renderPlot({
    x <- rnorm(runif(input$n))
    hist(x, breaks = 40, freq = FALSE,
         main = "Histograma da Normal Padrão",
         ylab = "Tamanho da Amostra",
         xlab = "Valores")
    curve(dnorm(x, mean=0, sd=1), 
          col="darkblue", lwd=2, add=TRUE, yaxt="n")
  })
}


# Return a Shiny app object
shinyApp(ui = ui, server = server)
