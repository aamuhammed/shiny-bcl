library(shiny)

#Load data
bcl <- read.csv("bcl-data.csv", stringsAsFactors = FALSE)
#print(str(bcl)) #This code checks that app can successfully read the data

#ui
ui <- fluidPage(titlePanel("BC Liquor Store prices"),
                
                sidebarLayout(
                  sidebarPanel(sliderInput("priceInput", "Price", min = 0, max = 100,
                                           value = c(25, 40), pre = "$"),
                               radioButtons("typeInput", "Product type",
                                            choices = c("BEER", "REFRESHMENT", "SPIRITS", "WINE"),
                                            selected = "WINE"),
                               selectInput("countryInput", "Country",
                                           choices = c("CANADA", "FRANCE", "ITALY"))),
                  mainPanel(plotOutput("coolplot"))
                )
                
                )

#server
server <- function(input, output) {}

shinyApp(ui = ui, server = server)
