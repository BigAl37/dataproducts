library(shiny)
shinyUI(
    pageWithSidebar(
        # Application title
        headerPanel("Body Mass Index Calculator"),
        
        sidebarPanel(
            numericInput("weight", "Enter Weight kg/lb", 65, min = 2,
                         max = 500, step = 1),
            numericInput("height", "Enter Height in Meters/Inches in decimals", 
                         1.75, min = 0.5, max = 2.8, step = 0.01),
            radioButtons("meterorinch", "Metric or Imperial",
                         c("Meters" = TRUE,
                           "Inches" = FALSE)),
            submitButton('Submit')
        ),
        mainPanel(
            # Documentation
            h2("Documentation"),
            h4("This BMI Index Calculator will calculate your BMI Index
               and give you a rating based on the WHO classification.
               Weight and height can be in the metric or imperial 
               system. For weight enter only whole numbers (integers)
               and for height you can enter up to 2 decimals. The
               input and result is displayed below. To switch between
               metric or imperial use the radio buttons."),
            h3("Results of BMI Calculation"),
            h4("Input"),
            verbatimTextOutput("inputWeight"),
            verbatimTextOutput("inputHeight"),
            h4("Result"),
            verbatimTextOutput("BMIResult"),
            verbatimTextOutput("BMILogRes")
        )
)
)