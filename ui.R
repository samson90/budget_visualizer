library(shiny)
fluidPage(
    # Application title
    titlePanel('Budget Visualizer'),
    
    # Sidebar with text boxes for budget input.
    sidebarPanel(
        numericInput('income', 'Income', 0, 0),
        numericInput('rent', 'Rent', 0, 0),
        numericInput('food', 'Food', 0, 0),
        numericInput('transportation', 'Transportation', 0, 0),
        numericInput('utilities', 'Utilities', 0, 0),
        numericInput('debt', 'Debt', 0, 0),
        numericInput('savings', 'Savings', 0, 0),
        numericInput('misc', 'Misc', 0, 0),
        submitButton('Calc')
        ),
    
    mainPanel(
        h4('Instructions'),
        p("1. Enter your earnings and living expenses in the form to the 
          right."),
        p("2. Press the 'Calc' button to see your spending chart and money 
          leftover"),
        h4("Money Leftover"),
        verbatimTextOutput('leftover'),
        plotOutput('pie')
        )
    )