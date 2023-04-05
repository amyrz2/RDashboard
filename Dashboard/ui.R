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
                box(plotOutput("plot1", height = 250)),
                box(
                  title = "Controls",
                  sliderInput("slider", "Number of observations:", 1, 100, 50)
                )
              )
      ),
      
      # Competition page
      tabItem(tabName = "competition",
              fluidRow(
                box(
                  title = "Inputs",
                  textInput("input1", "Text Input 1", ""),
                  textInput("input2", "Text Input 2", ""),
                  textInput("input3", "Text Input 3", ""),
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
