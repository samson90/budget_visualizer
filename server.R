library(shiny)
shinyServer(
    function(input, output){
        output$leftover <- renderPrint({
            input$income - input$rent - input$food - input$transportation - 
                input$utilities - input$debt - input$savings - input$misc
            })
        
        
        output$pie <- renderPlot({
            pie(c(input$rent, input$food, input$transportation, 
                  input$utilities, input$debt, input$savings, input$misc),
                labels = c('Rent', 'Food', 'Transportation', 'Utilities', 
                           'Debt', 'Savings', 'Misc'),
                main='Spending Distribution'
                )
        }, height = 500, width = 500)
    })