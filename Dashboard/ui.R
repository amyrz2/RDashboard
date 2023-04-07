# ui.R

# Load global settings
source("global.R")

# Define UI
ui <- dashboardPage(
  dashboardHeader(title = "My Dashboard"),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")),
      menuItem("Competition", tabName = "competition", icon = icon("th")),
      menuItem("Trends", tabName = "trends", icon = icon("th"))
    )
  ),
  ## Body content
  dashboardBody(
    tabItems(
      # Landing page
      tabItem(tabName = "dashboard",
              fluidRow(
                box(title = "Histogram", solidHeader = TRUE,
                    plotOutput("plot4", height = 250)),
            
                box(
                  title = "Controls",
                  sliderInput("slider", "Number of observations:", 1, 100, 50)
                )
              ),
              fluidRow(
                # A static infoBox
                infoBox("New Orders", 10 * 2, icon = icon("credit-card")),
                # Dynamic infoBoxes
                infoBoxOutput("progressBox"),
                infoBoxOutput("approvalBox")
              ),
              
              # infoBoxes with fill=TRUE
              fluidRow(
                infoBox("New Orders", 10 * 2, icon = icon("credit-card"), fill = TRUE),
                infoBoxOutput("progressBox2"),
                infoBoxOutput("approvalBox2")
              ),

              
      ),
      
      # Competition page
      tabItem(tabName = "competition",
              fluidRow(
                box(
                  title = "Inputs",
                  textInput("input1", "Text Input 1", ""),
                  textInput("input2", "Text Input 2", ""),
                  textInput("input3", "Text Input 3", ""),
                  selectInput("submarket_labels_input", "Select an patent:", choices = unique_cpc_group, multiple = TRUE),
                  actionButton("actionButton1", "Submit")
                ),
                box(
                  title = "Outputs",
                  h3("Competition Page Outputs")
                )
              )
      ),
      
      # Trends page
      tabItem(tabName = "trends",
              fluidRow(
                box(
                  title = "Inputs",
                  textInput("input4", "Text Input 4", ""),
                  actionButton("actionButton2", "Submit")
                ),
                box(
                  title = "Outputs",
                  h3("Trends Page Outputs")
                )
              )
      )
    )
  )
)
