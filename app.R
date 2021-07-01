library(shiny)

#Load data
bcl <- read.csv("bcl-data.csv", stringsAsFactors = FALSE)
#print(str(bcl)) #This code checks that app can successfully read the data

#ui
ui <- fluidPage('BC Liquor' ,'Store Prices')

#server
server <- function(input, output) {}

shinyApp(ui = ui, server = server)