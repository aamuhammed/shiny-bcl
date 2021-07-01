library(shiny)

#Load data
bcl <- read.csv("bcl-data.csv", stringsAsFactors = FALSE)
#print(str(bcl)) #This code checks that app can successfully read the data

#ui
ui <- fluidPage(titlePanel("BC Liquor Store prices"),
                sidebarLayout(
                  sidebarPanel("our inputs will go here"),
                  mainPanel("the results will go here")
                )
                )

#server
server <- function(input, output) {}

shinyApp(ui = ui, server = server)