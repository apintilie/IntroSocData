install.packages(c("swirl", "swirlify"))
library(swirl)
library(swirlify)

setwd('/Users/Adina/Desktop/1.2')
new_lesson("1.2", "Introduction")

#Intro about R
wq_message(output = 'Hi there! Welcome to R! R is a one of the most powerful and most widely used statistical software. 
           R lets you quickly and easily interpret, interact with, and visualize data. Press enter to move on.')

wq_message(output = "That might sound scary, but do not worry! 
           This script is meant to help you understand the basics of R. Press enter when you are ready to start!")

wq_message(output = "In order to get R to do anything, you have to type a command. 
           A command is you telling R what to do.")

wq_message(output = "R is a programming language which means that in order to get things done, you must type it all in.")

wq_message(output = "To type a command intro R, you just have to type it and things will then execute in the console - the bottom one.")

wq_message(output = "For things to get executed, you have to press either Run - which is at the top of yout R Script, or Ctrl+Enter at the end of the command. ")

wq_message(output = "How about we have a go at that?")


#R as a calculator
wq_message(output = "R can be used for many things, such as a calculator. Next, try typing a command for some basic maths.")

wq_command(output = "Let's try an easy one. What is 12*4? Type it below to see R work as a calculator.", 
           correct_answer = "12*4", 
           answer_tests = "any_of_exprs('12*4', '12 * 4', '4*12', '4 * 12')",
           hint = "Simply type in the mathematical operation.")

wq_message(output = "Not too bad, right? How about a couple more?")

wq_command(output = "Add up 3 and 25, just as you would in a calculator.",
           correct_answer = "3+25",
           answer_tests = "any_of_exprs('3+25', '3 + 25', '25+3', '25 + 3')",
           hint = 'Simply type them in!')

wq_command(output = "Last one. What is 123 divided by 4.2?",
           correct_answer = "123/4.2",
           answer_tests= "any_of_exprs('123/4.2', '123 / 4.2')")


#Load a dataset
wq_message(output = "But R is more than a calculator. 
           You can upload datasets and work with them. 
           A dataset is a collection of data. 
           We will now focus on one tiny data set and start exploring it.")

wq_message(output = "To be able to look at a data set, you must first load it. This is also called importing the data.")

wq_message(output = "You can do this two ways. You'll need to have the dataset downloaded already. 
           First, you can import it in the Environment - on the right of your screen. Click Import Dataset from Text file and look for music.csv.
           Second, you can write a command. Let's try this one together.")

wq_command(output = "music <- read.csv(file.choose(''), header=TRUE)
           This command uses file location. Copy this command and execute it. Then, find the music.csv file in your computer.",
           correct_answer = "music <- read.csv(file.choose(''), header=TRUE)",
           answer_tests = "omnitest(correctExpr='music <- read.csv(file.choose(''), header=TRUE)')",
           hint = "Just copy the command and go from there.")


#View and head
wq_message(output = "To explore the data, you can use the view() and head() commands.")

wq_command(output = "Type in view(music) to have a look at the dataset. 
           View() will show you any dataset and the (music) part makes it specific to this one.
           View() opens your dataset in a new window, at the top of the working R Script.",
           correct_answer = "view(music)",
           answer_tests = "omnitest(correctExpr='view(music)')")

wq_command(output = "Typing in head(music) will show you all the data in the Console, without opening a new window.
           It's sometimes easier to do that with small datasets.",
           correct_answer = "head(music)",
           answer_tests = "omnitest(correctExpr='head(music)')")

wq_message(output = "This dataset is a small collection of data about 6 artists.
           Women are coded as 1 and men are coded as 0.")


#Summary statistics
wq_message(output = "To understand this data, we'll do some quick summary statistics. 
           These give us an overview of the dataset. 
           It's helpful to do those when you start working with new datasets or to refresh your memory on old ones.")

wq_command(output = "Using one command, you can visualise a variable summary for the music data set. 
           This is done using the summary() command. Try executing the command yourself!", 
           correct_answer = "summary(music)",
           answer_tests = "omnitest(correctExpr='summary(music)')",
           hint = "Type ?summary.")

wq_message(output = "The summary() function is a great way to observe central tendency. 
           Colloquially, measures of central tendency are often called averages. 
           They show how the data is spread.")


#Understand mean, median and mode
wq_multiple(output = "What is the mean?",
            answer_choices = c("Sum of all the numbers divided by the number of numbers.",
                               "Most occuring number.",
                               "The middle number in a given sequence."),
            correct_answer = "Sum of all the numbers divided by the number of numbers.",
            answer_tests = "omnitest(correctVal='Sum of all the numbers divided by the number of numbers.')",
            hint = "Type ?mean. Think average." )

wq_multiple(output = "And what is the median?",
            answer_choices = c("Sum of all the numbers divided by the number of numbers.",
                               "Most occuring number.",
                               "The middle number in a given sequence."),
            correct_answer = "The middle number in a given sequence.",
            answer_tests = "omnitest(correctVal='The middle number in a given sequence.')",
            hint = "Type ?median. Think middle." )

wq_message(output = "The only definition left is the one for mode.
           The mode is the most occuring number.")

#Mentally
wq_message(output = "Let's quickly go through mean, median and mode with these quesions.")

wq_numerical(output = "What is the mean of this vector? 2, 4, 6, 8", 
             correct_answer = "5",
             answer_tests = "omnitest(correctVal=5)",
             hint = "Think average.")

wq_numerical(output = "What is the median of this vector? 9, 7, 10, 6, 5", 
             correct_answer = "7",
             answer_tests = "omnitest(correctVal=7)",
             hint = "Think middle.")

wq_multiple(output = "What kind of mode does this vector have? 1, 3, 3, 3, 4, 4, 6, 6, 6, 9",
            answer_choices = c("Unimodal", "Bimodal", "Trimodal"),
            correct_answer = "Bimodal",
            answer_tests = "omnitest(correctVal='Bimodal')",
            hint = "Some vectors can have more than one mode. How many numbers reccur for the same amount of times?")

wq_numerical(output = "And one more: What is the average of this vector? 3, 5, 7, 11, 4",
             correct_answer = "6",
             answer_tests = "omnitest(correctVal=6)",
             hint = "What measure of central tendency is an average?")


#Mean function
wq_message(output = "Great! Now you understand what these 3 measures of central tendency mean, let's learn some commands for each individual one. 
           This makes it easier to fetch just one of them if you need it.")

wq_message(output = "Remember how in the summary() command putting music inside the () made the summary specific to this dataset?
           You can make commands specific to variables of the dataset using the $ sign. Have a go at it!")

wq_command(output = "You can find the mean of a variable with the mean() command.
           Now, find the mean of the no_album variable.
           For this, you'll ned to connect the music dataset to the no_album variable with the $ symbol.",
           correct_answer = "mean(music$no_album)",
           answer_tests = "omnitest(correctExpr='mean(music$no_album)')",
           hint = "To link music and no_ablum, you need to type (music$no_album)")


#Missing Values
wq_message(output = "Look at the data again. You can see that Skrillex's no_tours is NA, which means the data is missing.")

wq_message(output = "Because some data is missing, you'll need to tell R to omit it. 
           Let's do that step by step.")

wq_command(output = "First, find out the average number of tours performed by all the artists in the music dataset using a comand.",
           correct_answer = "mean(music$no_tours)",
           answer_tests = "any_of_exprs('mean(music$no_tours)', 'mean (music$no_tours)')",
           hint = "The mean is the average. Type ?mean if you're stuck and remember to connect music to no_tours with $.")

wq_message(output = "This didn't work because we didn't omit the NA value. So far, you should have mean(music$no_tours).")

wq_message(output = "You have two options for dealing with the NA.
           First, adding na.omit() in front of the variable, in this case, music$no_tours.
           Second, adding na.rm=TRUE after the variable. 
           Why don't you try now?")

wq_command(output = "Find out the average number of tours performed by all the artists in the music dataset using a command.
           Please use the na.omit() function.",
           correct_answer = "mean(na.omit(music$no_tours))",
           answer_tests = "any_of_exprs('mean(na.omit(music$no_tours))', 'mean( na.omit (music$no_tours) )')",
           hint = "Remember to omit the NA!")

wq_command(output = "Finally, write the same command, but this time, please use na.rm=TRUE.",
           correct_answer = "mean((music$no_tours),na.rm=TRUE)",
           answer_tests = "any_of_exprs('mean((music$no_tours),na.rm=TRUE)', 
           'mean( (music$no_tours), na.rm=TRUE)', 'mean((music$no_tours),na.rm=T)' )",
           hint = "R is case sensitive. You'll need to have TRUE all in capitals.")


#Median
wq_command(output = "Great work! Now, bring up the summary for the dataset again. Do you remember the command?", 
           correct_answer = "summary(music)",
           answer_tests = "omnitest(correctExpr='summary(music)')",
           hint = "Type ?summary.")

wq_multiple(output = "Looking at the summary, which is the best measure of central tendency for for no_awards?
            By looking at the minimum and maximum values, you'll be able to tell if the data is skewed. 
            That means the data is asymetrical at one end.",
            answer_choices = c("Median", "Mode", "Mean"),
            correct_answer = "Median",
            answer_tests = "omnitest(correctVal='Median')",
            hint = "Consider the max. value. Is it skewing the data?")


#Mode
wq_message(output = "And finally, one quick look at the mode.")

wq_numerical(output = "Looking at the dataset, what is the mode in the no_albums variable?",
             correct_answer = "8",
             answer_tests = "omnitest(correctVal=8)",
             hint= "Think most occuring.")


#Done
wq_message(output = "Well done! You've survived your R initiation!
           Now you know R can be used just as a calculator or as way to work out measures of central tendency.
           These questions showed you what mean, median and mode are. 
           If things are still a bit confusing, have another go at this script. 
           If you've aced it, congrats!")

testit()
