library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Indian Railways Income Prediction"),
  sidebarPanel(
    sliderInput(inputId="psgr",label="Enter Daily Average Passenger Trains",min=1,max=100,value=50),
    sliderInput(inputId="goods",label="Enter Daily Average Goods Trains",min=1,max=100,value=50)
  ),
  mainPanel(
    h2('You entered'),
    p('Daily average Passenger trains'),
    textOutput('psgr'),
    p('Daily average Goods trains'),
    textOutput('goods'),
    h2('Predicted revenue in Indian Rupees(*10Millions)'),
    textOutput('income')
  )
))
