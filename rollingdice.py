import random




def first():
    choice = input("Do you want to roll the dice? - yes/no")
    if choice.lower() == "yes":
        rand = random.randint(1,6)
        print(f"You have rolled the dice {rand}")
    else:
        print("You have chosen not to roll!")





while True:
       print("We have 2 options for you:")
       print("1.starting")
       print("2.exiting")

       answer = input("Enter your answer:")
       if answer == "1":
           first()
       elif answer == "2":
           break
           print("We have exited the program !")










