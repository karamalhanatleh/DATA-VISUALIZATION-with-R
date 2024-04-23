##########################
#       Correlograms 
#########################

#load libraray
library(ggcorrplot)


# Compute a correlation matrix
data(mtcars)
corr<- round(cor(mtcars),1)
head(corr[,1:6])


# Compute a matrix of correlation p-values
p.mat <-cor_pmat(mtcars)
head(p.mat[,1:4])


##Correlation matrix visualization

# Visualize the correlation matrix

ggcorrplot(corr) # method = "square" (default)


ggcorrplot(corr , method = 'circle')

# Reordering the correlation matrix
ggcorrplot(corr , hc.order = TRUE)





#Types of correlogram layout
ggcorrplot(corr ,hc.order=TRUE , type = 'upper')

ggcorrplot(corr , hc.order = TRUE , type='lower' )





# Change colors and theme





