# server.R

# Reactive object if you want something to update immediately 
# Reactive value and observer, wait for user to change something and then update r_list and then feed it into other steps in the process

# Load global settings
source("global.R")

# Define server
server <- function(input, output, session) {
  # Reactive object if you want something to update immediately 
  
  text_labels_input <- reactive({
    req(input$submarket_labels_input)
    paste('You entered: ', input$submarket_labels_input, sep = ' ', collapse = ' ')
  })
  output$text_label_output <- renderText({text_labels_input()})
  }
