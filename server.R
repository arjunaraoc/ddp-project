library(shiny)
irfa<-read.csv("data/Indian rail traffic net revenues.csv")
fit1<-lm(income~psgr_trains+goods_trains,data=irfa)
psgrmin<-min(irfa$psgr_trains)
psgrmean<-mean(irfa$psgr_trains)
psgrmax<-max(irfa$psgr_trains)
goodsmin<-min(irfa$goods_trains)
goodsmean<-mean(irfa$goods_trains)
goodsmax<-max(irfa$goods_trains)

shinyServer(
  function(input, output,session) {
  output$psgrmin<-renderPrint({psgrmin})
  output$psgrmean<-renderPrint({psgrmean})
  output$psgrmax<-renderPrint({psgrmax})
  output$goodsmin<-renderPrint({goodsmin})
  output$goodsmean<-renderPrint({goodsmean})
  output$goodsmax<-renderPrint({goodsmax})
  updateSliderInput(session,'psgr',min=psgrmin,max=psgrmax,value=psgrmean)
  updateSliderInput(session,'goods',min=goodsmin,max=goodsmax,value=goodsmean)
  princome<-reactive({formatC(predict(fit1,newdata=data.frame(psgr_trains=as.numeric(input$psgr),goods_trains=as.numeric(input$goods))),format="f",digits=0,big.mark=",")})
  output$psgr<-renderText({input$psgr})
  output$goods<-renderText({input$goods})
  output$income<-renderText({princome()})
  }
)
