# Working

# library(rsconnect)


# DRAFT #

library(shiny)
require(markdown)

shinyUI(
  fluidPage(
    
    titlePanel("Motor Trend Cars Fuel Consumption"),
    
    sidebarPanel(
      
      h3("Select Attributes"),
      radioButtons("cyl","No. of Cylinders:", 
                   c("4" = "4","6" = "6","8" = "8")),
      radioButtons("am","Transmission Type:", 
                   c("Automatic" = "0","Manual" = "1")),
      numericInput('horse','Available Horsepower (70 - 250): ',
                   100, min = 70, max = 250, step = 10)),
    
    mainPanel(
      
      tabsetPanel(
        
         tabPanel("About",
                 mainPanel(includeMarkdown("readme.md"))
        ),
       tabPanel("Results",
                 mainPanel(
                   
                   h3("Miles Per Gallon"),
                   verbatimTextOutput("mpgId")
                 )
        )
      )
    )
  )
)