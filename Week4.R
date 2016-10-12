# determines the best hospital in a state for a specific outcome
# if there is a tie, return the first hospital in alphabetical order

# Errors generated:
#   invalid state
#   invalid outcome

best <- function(state,outcome) {
  outcomedata <- read.csv("outcome-of-care-measures.csv", colClasses = "character")

  # verifies the outcome and obtains the column of the data
  outcomes <- data.frame(type=c("heart attack","heart failure","pneumonia"),columns = c(10,11,12))
  col <- outcomes[outcomes[,"type"]==outcome,"columns"]
  if(length(col)==0) 
    stop(paste(outcome," is not a valid outcome",sep=""))
  
  # splits the data to have just the state
  statedata <- outcomedata[outcomedata[,'State']==state,]
  if(nrow(statedata) == 0)
    stop(paste(state," is invalid or not in data"))
  
  
}