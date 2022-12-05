bot <- 0
win <- 0
lose <- 0
ties <- 0

game <- function(){
    sys_user_action <- c("rock", "scissors", 
                         "paper", "quit")
    sys_bot <- sys_user_action[1:3]
    bot <- 0
    win <- 0
    lose <- 0
    ties <- 0
    while (T){
        user_action <- readline("Action with rock, paper,scissors, or quit to exit: ")
        bot <- sample(sys_bot, size = 1)
        
        if(user_action %in% sys_user_action){
            if(user_action == "quit"){
                message("Thank you for playing with us")
                score <- list(Win = win,
                              Lose = lose,
                              Ties = ties)
                scores <- data.frame(score)
                message(scores)
                break
            }else{
            if(bot == user_action){
                ties = ties + 1
                message("We are the same person, It's ties.")
                message(paste("Computer action:", bot))
            }else{
                if((user_action == sys_user_action[1] & 
                    bot == sys_bot[2]) 
                   | (user_action == sys_user_action[2] &
                      bot == sys_bot[3])
                   | (user_action == sys_user_action[3] &
                      bot == sys_bot[1])){
                    win = win + 1
                    message("You win, what an action!!!")
                    message(paste("Computer action:", bot))
                }else{
                    lose = lose +1
                    message("You loseeeeeeeee try again.")
                    message(paste("Computer action:", bot))
                }
            }
            }
        }else{ message("Incorrect action please try again!!!")}
        score <- list(Win = win,
                      Lose = lose,
                      Ties = ties)
        scores <- data.frame(score)
        message(scores)
    }
} 
game()

## if you want to run this code in R programming change "message to print"
