shinyUI(fluidPage(
  
  titlePanel("Predicted miles per (US) gallon for cars"),
  
  sidebarLayout(
    sidebarPanel(
      p ('Please enter characteristics of the car:'),
      numericInput ('am',  'Transmission (0 = automatic, 1 = manual)', 1, min = 0, max = 1, step = 1),
      numericInput ('cyl', 'Number of cylinders', 6, min = 4, max = 8, step = 2),
      numericInput ('hp',  'Gross horsepower', 120, min = 60, max = 260, step = 10),
      numericInput ('wt',  'Weight (lb/1000)', 2.5, min = 1.6, max = 5.5, step = 0.1)
    ),
    mainPanel(
      h2 ('Documentation:'),
      p ('We will predict miles per (US) gallon for a car'),
      p ('based on four parameters which you can change in'),
      p ('the left part of the screen.'),
      h2 ('Prediction:'),
      p ('Predicted Miles per (US) gallon:'),
      textOutput ('text1')
    )
  )
))


