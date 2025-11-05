# app.R
# note que o arquivo esta localizado em: C:\Users\jeanm\Documents\app.R

library(shiny)
library(ggplot2)
source("pk_models.R")

ui <- fluidPage(
  titlePanel("Simulador PK — 1 Compartimento"),
  sidebarLayout(
    sidebarPanel(
      numericInput("dose", "Dose (mg):", 500),
      numericInput("V", "Volume de Distribuição (L):", 50),
      numericInput("CL", "Clearance (L/h):", 5),
      numericInput("ka", "Taxa de Absorção (h⁻¹):", 1),
      sliderInput("time_max", "Tempo Máximo (h):", min = 1, max = 48, value = 24)
    ),
    mainPanel(
      plotOutput("pk_plot"),
      tableOutput("pk_table")
    )
  )
)

server <- function(input, output) {
  output$pk_plot <- renderPlot({
    times <- seq(0, input$time_max, length.out = 100)
    conc <- pk_1comp_oral(times, input$dose, input$V, input$CL, input$ka)
    df <- data.frame(time = times, concentration = conc)
    
    ggplot(df, aes(x = time, y = concentration)) +
      geom_line(color = "blue", size = 1) +
      labs(title = "Perfil de Concentração", x = "Tempo (h)", y = "Concentração (mg/L)") +
      theme_minimal()
  })
  
  output$pk_table <- renderTable({
    times <- seq(0, input$time_max, length.out = 10)
    conc <- pk_1comp_oral(times, input$dose, input$V, input$CL, input$ka)
    data.frame(Time = times, Concentration = conc)
  })
}

shinyApp(ui = ui, server = server)