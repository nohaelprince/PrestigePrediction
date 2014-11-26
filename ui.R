library(shiny)

shinyUI(
 
    pageWithSidebar(
    #Application title    
    headerPanel("Prestige Prediction"),
        
    sidebarPanel(
        numericInput('education', 'education (credit)', 6, min=6, max = 16, step=0.1),
        numericInput('income', 'income ($)',600, min=600, max = 26000, step=1),
        
        radioButtons("type", "Occupation Type",
                           c("Blue Collar" = "bc",
                             "White Collar" = "wc",
                             "Prof, Professional, Managerial, technical" = "prof")),
       actionButton("goButton", "Predict!")
    ),
    mainPanel(
        h3('Results of prediction'),
        h4('You enterd'),
        verbatimTextOutput("inputValue1"),
        verbatimTextOutput("inputValue2"),
        verbatimTextOutput("inputValue3"),
        h4('which resulted in a prediction of '),
        verbatimTextOutput("prediction")
        
   )
))