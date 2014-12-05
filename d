[1mdiff --cc .gitignore[m
[1mindex accb8e2,bd4f70c..0000000[m
[1m--- a/.gitignore[m
[1m+++ b/.gitignore[m
[36m@@@ -17,4 -15,6 +17,10 @@@[m
  *.html[m
  r_markdown_files[m
  r_markdown_cache[m
[32m++<<<<<<< HEAD[m
[32m +>>>>>>> 0a98ed89336763c52af240f15d14b508b82d0886[m
[32m++=======[m
[32m+ [m
[32m+ # Data[m
[32m+ data[m
[32m++>>>>>>> 408f67c7a9f66d3846fb1e478bf2930b17279dbb[m
[1mdiff --cc Session_04_2014-11-18/working_with_data_II.Rmd[m
[1mindex 4b94168,2dc4530..0000000[m
[1m--- a/Session_04_2014-11-18/working_with_data_II.Rmd[m
[1m+++ b/Session_04_2014-11-18/working_with_data_II.Rmd[m
[36m@@@ -34,43 -34,35 +34,73 @@@[m [mattach(df2[m
  TokenFrequenz[m
  # Wortart[m
  [m
[32m++<<<<<<< HEAD[m
[32m +# detach()[m
[32m++=======[m
[32m+ #detach()[m
[32m++>>>>>>> 408f67c7a9f66d3846fb1e478bf2930b17279dbb[m
  ```[m
  [m
  ## Sortierung und Selektion[m
  ```{r sort, echo = TRUE}[m
[32m++<<<<<<< HEAD[m
[32m +v12 <- c(1:100)[m
[32m +v13 <- c(1, 4, 5, 3, 6, 9)[m
[32m +sort(v13, T)[m
[32m +order(v13) #Reihenfolge ausgeben geordnet (nur Stellen im Vektor)[m
[32m +[m
[32m +```[m
[32m +[m
[32m +```{r ordering, echo = T}[m
[32m +df2[order(df2$TokenFrequenz), ][m
[32m +[m
[32m +```[m
[32m +[m
[32m +[m
[32m +## Samples (für Stichprobenziehen gut geeignet)[m
[32m +```{r samples, echo=T}[m
[32m +set.seed(1)[m
[32m +[m
[32m +df2[sample(length(df2$Klasse)), ][m
[32m +df2[sample(length(df2$Klasse)), ][m
[32m +[m
[32m +[m
[32m +```[m
[32m +[m
[32m +## Logische Abfragen[m
[32m +```{r boolean, echo=TRUE}[m
[32m +subset(df2, df2$Klasse == 'offen' & df2$TokenFrequenz > 100)[m
[32m +subset(df2, df2$Klasse == 'geschlossen' & df2$Wortart %in% c('KONJ', 'PRAEP'))[m
[32m +[m
[32m +```[m
[32m +[m
[32m +[m
[32m++=======[m
[32m+ v12 <- 1:100 # seq(1, 100, 1)[m
[32m+ v13 <- c(1, 4, 5, 3, 6, 9)[m
[32m+ sort(v13)[m
[32m+ sort(v13, TRUE)[m
[32m+ order(v13)[m
[32m+ ```[m
[32m+ [m
[32m+ ```{r ordering, echo = TRUE}[m
[32m+ df2[order(df2$TokenFrequenz), ][m
[32m+ ```[m
  [m
[32m+ ## Samples[m
[32m++>>>>>>> 408f67c7a9f66d3846fb1e478bf2930b17279dbb[m
[32m+ [m
[32m+ ```{r samples, echo = TRUE}[m
[32m+ set.seed(1)[m
[32m+ df2[sample(length(df2$Klasse)), ][m
[32m+ df2[sample(length(df2$Klasse)), ][m
[32m+ ```[m
[32m+ [m
[32m+ ## Logische Abfragen[m
[32m+ ```{r boolean, echo = TRUE}[m
[32m+ subset(df2, df2$Klasse == 'offen' & df2$TokenFrequenz > 100)[m
[32m+ subset(df2, df2$Klasse == 'geschlossen' & df2$Wortart %in% c('KONJ', 'PRAEP'))[m
[32m+ ```[m
  [m
  ## Arbeit mit XML-Dateien[m
  [m
