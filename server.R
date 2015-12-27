library (datasets)
data (mtcars)
fit <- lm (mpg ~ factor(am) + wt + cyl + hp, data = mtcars) 
uservalues <- data.frame (am = factor(1), cyl= 6, hp = 110, wt = 2.62)

library(dygraphs)
library(datasets)

shinyServer(function(input, output) {
  
  predicted <- reactive({
    uservalues <- data.frame (am = factor({input$am}), 
                                cyl= {input$cyl}, 
                                hp = {input$hp}, 
                                wt = {input$wt})
    predict (fit, uservalues)
  })
  
  output$text1 <- renderText (predicted())
  
})