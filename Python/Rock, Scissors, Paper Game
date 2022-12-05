import random

def game():
    results = [
        ["win", 0],
        ["lose", 0],
        ["ties", 0]
    ]
    sys_user_action = ('rock', 'paper', 'scissors', 'quit')
    sys_bot = sys_user_action[0:3]
    while True:
        user_action = input("Action with rock, paper,scissors, or quit to exit: ").lower()
        bot = random.sample(sys_bot, 1)
        random_value = bot[0]

        if user_action in sys_user_action:
            if user_action == "quit":
                print("Goodbye :D")
                for result in results:
                    print(f"{result[0]} : {result[1]}")
                break
            elif random_value == user_action:
                results[2][1] = results[2][1] +1
                print("We are the same person, It's ties.")
                print(f"Computer action: {bot}")
                for result in results:
                    print(f"{result[0]} : {result[1]}")
            elif (user_action == sys_user_action[0] and random_value == sys_bot[2]) or (user_action == sys_user_action[1] and random_value == sys_bot[0]) or (user_action == sys_user_action[2] and random_value == sys_bot[1]):
                results[0][1] = results[0][1] +1
                print("You win, what an action!!!")
                print(f"Computer action: {bot}")
                for result in results:
                    print(f"{result[0]} : {result[1]}")
            else:
                results[1][1] = results[1][1] +1
                print("You loseeeeeeeee try again.")
                print(f"Computer action: {bot}")
                for result in results:
                    print(f"{result[0]} : {result[1]}")
                
        else:
            print("Incorrect action please try again!!!")
            for result in results:
                    print(f"{result[0]} : {result[1]}")
        

    
game()
