BMI <- function(weight, height, meterorinch) {
    
    if(meterorinch == TRUE)
    {
        x <- weight/height^2
    } 
    else if (meterorinch == FALSE) 
    {
        x <- (weight/height^2) * 703
    }
    
    x
}

BMILogic <- function(BMI) {
    
    if(BMI <= 15) {
        x <- "Very severely underweight"
    } else if (BMI > 15 && BMI <= 16) {
        x <- "Severely underweight"
    } else if (BMI > 16 && BMI <= 18.5) {
        x <- "Underweight"
    } else if (BMI > 18.5 && BMI <= 25) {
        x <- "Normal (healthy weight)"
    } else if (BMI > 25 && BMI <= 30) {
        x <- "Overweight"
    } else if (BMI > 30 && BMI <= 35) {
        x <- "Obese Class I (Moderately obese)"
    } else if (BMI > 35 && BMI <= 40) {
        x <- "Obese Class II (Severely obese)"
    } else if (BMI > 40) {
        x <- "Obese Class III (Very severely obese)"
    }
    
    x
    
}

shinyServer(
    function(input, output) {
        output$inputWeight <- renderPrint({input$weight})
        output$inputHeight <- renderPrint({input$height})
        output$BMIResult <- renderPrint({BMI(input$weight, input$height
                                             ,input$meterorinch)})
        output$BMILogRes <- renderPrint({BMILogic({BMI(input$weight, input$height
                                                       ,input$meterorinch)})})
        
    }
)