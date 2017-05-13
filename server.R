library(shiny)
library(GGally)
shinyServer(
  function(input, output){

    #
    # Reactive content follows
    #
    cmd <- reactive({
      paste("str(",{input$dataset},")")
    })
    cmdPlot <- reactive({
      paste("ggpairs(",{input$dataset},")")
    })
    
    output$ds = renderPrint({input$dataset})

    output$str = renderPrint(eval(parse(text=cmd())))
    
    output$plot = renderPlot(eval(parse(text=cmdPlot())))
  }
)