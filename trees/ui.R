shinyUI(fluidPage(
#    titlePanel("Trees k-means clustering"),
    fluidRow(
        column(3,img(src = "jhu.png", height=60, width=188)),
        column(6,h4("Data Science Specialization | Developing Data Products.",
                    style="color:blue;text-align:center"),
                 h4("Course Project: Trees k-means clustering",
                    style="color:blue;text-align:center"),
                 p("Developed by J. Gildardo Rojas Nandayapa",
                    style="text-align:center")),
        column(3,img(src = "trees.png", height=60, width=188),br(),
               "To see the Slide Deck,",
               a("click here.", href="http://rpubs.com/grojas/trees"))
    ),
    tabsetPanel(
        tabPanel("APPLICATION",
                 p("This application illustrates clustering, it uses Black Cherry
                 Trees data, the data set contains measurements for girth,
                 height (ft) and volume (cubic ft) of timber in 31 felled black
                 cherry trees. Girth is the diameter of the tree (in inches)
                 measured at 4 ft 6 inches above the ground.")),
        tabPanel("CHARTS",
                 p("CHARTS: The application has two charts: The first one plots
                 pairs of measurements, clusters and colors them according to
                 the cluster they belong to. The second chart shows the
                 individual measurement values and also colors k-mean
                 clusters.")),
        tabPanel("CONTROLS",
                 p("CONTROLS: The application has 3 controls: 2 selectors to
                 change the axis, this also changes the pairs being clustered
                 and plotted. The Cluster Count numeric input lets the user set
                 the desired number of clusters."))
    ),    

    fluidRow(
        column(4,
            wellPanel(selectInput('xcol', 'X Variable', names(trees)),
                      style = "color:#888888;")
        ),
        column(4,
            wellPanel(selectInput('ycol', 'Y Variable', names(trees),
                             selected=names(trees)[[2]]),
                      style = "color:#888888;")
        ),
        column(4,
            wellPanel(numericInput('clusters', 'Cluster Count', 3,min = 1, max = 9)),
            style = "color:#888888;")
    ),
    fluidRow(
        column(6,
            wellPanel(
                strong("K-means clusters"),
                plotOutput('plot1'), style = "color:#888888;"
            )
        ),
        column(6,
            wellPanel(
                strong("Measurements"),    
                plotOutput('plot2'), style = "color:#888888;"
               )
        )
    ),
    fluidRow(
        column(12,
               wellPanel(
                   p("Application Powered by Shiny by RStudio",
                     style = "color:#888888;text-align:center")
               )
        )
    )
    
))