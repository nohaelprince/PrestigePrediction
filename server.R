palette(c("#E41A1C", "#377EB8", "#4DAF4A", "#984EA3",
          "#FF7F00", "#FFFF33", "#A65628", "#F781BF", "#999999"))

predict_lm <- function(xx, yy, zz) {
        library(caret); library(car)
        data(Prestige) 
        set.seed(22722)
        inTrain <- createDataPartition(Prestige$prestige, p = 0.7, list = FALSE)
        trainingdata <- Prestige[inTrain, ]
        crossval <- Prestige[-inTrain, ]
        trainingdata <- trainingdata[complete.cases(trainingdata),] #remove rows with NAs
        model <- lm(prestige ~ as.numeric(education) + as.numeric(income) + 
                            as.factor(type), data=trainingdata)
        
        #newdata <- expand.grid(as.numeric(x), as.numeric(y), as.factor(z))
        newdata <- expand.grid(education=xx, income=yy, type=zz)
        p <- predict(model, newdata, interval='confidence')
        p
        
}

shinyServer(
   function(input, output){
           output$inputValue1 <- renderPrint({input$education})
           output$inputValue2 <- renderPrint({input$income})
           output$inputValue3 <- renderPrint({input$type})
           output$prediction <- renderPrint({
                if (input$goButton >= 1)
                   predict_lm(as.numeric(input$education), as.numeric(input$income),
                                as.factor(input$type))
                           
                 })
           
                 #  output$prediction <- renderPrint({predict_lm(input$education,
                  #                                     input$income, input$type)}))
           
   
   }
        
)