############################## 
### density plot
############################## 

#load library
library(ggplot2)
library(plyr)
library(reshape)


set.seed(1234)
df <- data.frame(
  sex=factor(rep(c("F", "M"), each=200)),
  weight=round(c(rnorm(200, mean=55, sd=5),
                 rnorm(200, mean=65, sd=5)))
)
head(df)

###Basic density plots
ggplot(df,aes(x=weight))+
  geom_density()




#add mean line
ggplot(df,aes(x=weight))+
  geom_density()+
  geom_vline(aes(xintercept=mean(weight)),color='red')


###Change density plot line types and colors

# Change line color and fill color
ggplot(df , aes(x=weight))+
  geom_density( fill='red')

# Change line type
ggplot(df , aes(x=weight))+
  geom_density(linetype='dotted' , fill='red')



######Calculate the mean of each group 

###Calculate the mean of each group :
mu <- ddply(df, "sex", summarise, grp.mean=mean(weight))


###Change line colors

# Change density plot line colors by groups
ggplot(df , aes(x=weight ))+
  geom_density(fill='green',alpha=0.6)

# Add mean lines
ggplot(df , aes(x=weight ))+
  geom_density(fill='green',alpha=0.5)+
  geom_vline(data=mu , aes(xintercept=grp.mean , color=sex))




### Change fill colors

# Change density plot fill colors by groups
ggplot(df, aes(x=weight, fill=sex)) +
  geom_density()


# Use semi-transparent fill
ggplot(df,aes(x=weight , fill=sex))+
  geom_density(alpha=0.3)



### Combine histogram and density plots
ggplot(df, aes(x=weight))+
  geom_histogram()

ggplot(df, aes(x=weight)) + 
  geom_histogram(aes(y=..density..))


########################################################

# create dataframe
set.seed(1234)
df <- data.frame(value =round(c(rnorm(200,
                                      mean=100,
                                      sd=7))))

# import libraries ggplot2
library(ggplot2) 

# create density plot
ggplot(df, aes(x=value)) + geom_density()



# create dataframe
set.seed(1234)
df <- data.frame(value =round(c(rnorm(900,
                                      mean=60, 
                                      sd=21))))

# import libraries ggplot2 
library(ggplot2)	 

# create density plot with desired colours
ggplot(df, aes(x=value)) +
  geom_density(fill="#77bd89",color="#1f6e34",alpha=0.8)



df <- data.frame(value = round(c(rnorm(900, mean = 60, sd = 21))))

ggplot(df, aes(x = value)) +
  geom_histogram(aes(y = ..density..), 
                 bins = 30, 
                 fill = "lightblue", 
                 color = "black") +
  geom_density(alpha = 0.5, fill = "lightgreen") +
  labs(title = "Combined Histogram and Density Plot",
       x = "Value",
       y = "Density") +
  theme_minimal()






####################################
#Overlay Density Plots
####################################



###Step 1: Create the Data
set.seed(1)

#create data
df <- data.frame(var1=rnorm(1000, mean=0, sd=1),
                 var2=rnorm(1000, mean=0, sd=3),
                 var3=rnorm(1000, mean=3, sd=2))

#view first six rows of data
head(df)

###Step 2: Convert the Data from Wide to Long

data <- melt(df)
head(data)


###Step 3: Create the Overlaying Density Plots
ggplot(data  , aes(x=value ,fill=variable))+
  geom_density(alpha=0.3)


ggplot(data , aes(x=value , fill= variable))+
  geom_density(alpha=0.8)




##########################################################

#delet down 

set.seed(1234)
df <- data.frame(
  sex=factor(rep(c("F", "M"), each=200)),
  weight=round(c(rnorm(200, mean=50, sd=5),
                 rnorm(200, mean=65, sd=5)))
)
head(df)

p <- ggplot(df, aes(x=weight)) + 
  geom_density()
p

p+ geom_vline(aes(xintercept=mean(weight)),
              color='blue')


ggplot(df, aes(x=weight))+
  geom_density(fill='lightblue')


library(plyr)
mu <- ddply(df, "sex", summarise, grp.mean=mean(weight))
head(mu)

ggplot(df ,aes(x=weight ,fill=sex))+
  geom_density()








