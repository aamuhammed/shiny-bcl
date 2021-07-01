library(shiny)

#Load data
bcl <- read.csv("bcl-data.csv", stringsAsFactors = FALSE)
#print(str(bcl)) #This code checks that app can successfully read the data

#ui
ui <- fluidPage(h1("My app"),
                "BC",
                "Liquor",
                br(),
                "Store",
                strong("prices"),
                div("this is blue", style = "color: blue;")
                )

#server
server <- function(input, output) {}

shinyApp(ui = ui, server = server)