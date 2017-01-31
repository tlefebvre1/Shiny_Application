
library(shiny)

shinyUI(pageWithSidebar(
    headerPanel("Volume and surface area of the N-ball / N-sphere"),
    sidebarPanel(
        textInput(inputId = 'dimension', 'Enter dimension (N)', value='2'),
        textInput(inputId = 'radius', 'Enter radius', value='1')
    ),
    mainPanel(
        h4('The volume of the n-ball is:'),
        verbatimTextOutput("oid1"),
        h4('The surface area of the n-sphere is:'),
        verbatimTextOutput("oid2")
    )
))
