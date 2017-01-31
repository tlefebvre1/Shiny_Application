
library(shiny)

shinyServer(function(input,output) {
    compute_volume <- reactive({
        dimension <- as.integer(input$dimension)
        radius <- as.numeric(input$radius)
        if ((dimension <= 0) | (radius < 0)) {
            volume <- NA
        }
        else {
            volume <- ((sqrt(pi) * radius) ** dimension) / gamma(1 + dimension / 2)
        }
    })
    compute_surface <- reactive({
        dimension <- as.integer(input$dimension)
        radius <- as.numeric(input$radius)
        if ((dimension <= 0) | (radius < 0)){
            surface <- NA
        }
        else{
            surface <- 2 * sqrt(pi) * ((sqrt(pi) * radius) ** (dimension - 1)) / gamma(dimension / 2)
        }
    })
    output$oid1<-renderText({compute_volume()})
    output$oid2<-renderText({compute_surface()})
})
