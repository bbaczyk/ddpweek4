library(shiny)
datasets<-as.character(as.data.frame(data()[3])$results.Item)
datasets<-datasets[!grepl(" ", datasets)]
ndatasets<-length(datasets)
datasets<-as.data.frame(matrix(datasets, nrow = length(datasets), ncol = 2))
datasets$V2<-as.character(datasets$V2)
for (i in 1:ndatasets){
  datasets[i, 2]<-class(eval(parse(text=as.character(datasets[i, 1]))))[length(class(eval(parse(text=datasets[i, 1]))))]
}
datasets<-subset(datasets, V2=="data.frame")
datasets<-datasets[order(datasets$V1),]
shinyUI(pageWithSidebar(
  headerPanel("Data Frame Explorer"),
  sidebarPanel(
    selectInput('dataset', "Dataset", datasets$V1),
    h3('Instructions'),
    HTML("<p>Part of learning r is understanding some of the standard datasets that are available. 
         From the dropdown list above, select a dataset you would like to explore.</p><br>"),
    HTML("<p>This shiny app will report on the structure of the dataset and then produce a ggpairs 
         plot of the dataset. Please be patient, as ggpairs can take a few minutes to present a large dataset.</p>"),
    HTML("<p>This app produces the list of all datasets loaded into R by default. The list is filered to
         inlcude only data frames.This list of data frames is loaded into the drop down list. When the user 
         selects a data frame to explore, the server produces the str and a ggpairs plot of the dataset.</p>")
  ),
  mainPanel(
    h3('Data Frame Visulation', align="center"),
    h4('Data Frame Selected:'),
    verbatimTextOutput("ds"),
    h4('Structure of selected data frame:'),
    verbatimTextOutput("str"),
    h4('GG Pairs Visualizaton of selected data frame:'),
    plotOutput("plot")
  )
  )
)