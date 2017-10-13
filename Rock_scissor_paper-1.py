# Created by: Alireza Teimoori
# Created on: 12 Oct 2017
# Created for: ICS3UR-1
# Lesson: Unit_3-03
# This program plays rock scissor paper with user

import ui
from numpy import random

#  defining global variables

com_choice = None
user_choice = None

#  the following function is going to be repeated 3 times so i decided to convert it to a line

def generate_random_number_and_choose():
    global com_choice
    random_number = random.randint(1,4)
    # random number generator between 1-4
    
    ## print(random_number)
    
    
    #  computer chooses between raock paper and scissor
    if random_number == 1:
        #global com_choice
        com_choice = "Paper"
        
    elif random_number == 2:
        #global com_choice
        com_choice = "Scissor"
        
    elif random_number == 3:
        #global com_choice
        com_choice = "Rock"
        
    view['com_choice_label'].text = com_choice
    

def decide_who_wins():
    global com_choice
    global user_choice
    
    if user_choice == com_choice:
        view['win_lose_label'].text = "TIE!!!"
        
    elif user_choice == "Rock":
        if com_choice == "Paper":
            view['win_lose_label'].text = "YOU LOSE!"
            
        elif com_choice == "Scissor":
            view['win_lose_label'].text = "YOU WIN!"
            
        
    elif user_choice == "Paper":
        if com_choice == "Scissor":
            view['win_lose_label'].text = "YOU LOSE!"
            
        elif com_choice == "Rock":
            view['win_lose_label'].text = "YOU WIN!"
            
        
    elif user_choice == "Scissor":
        if com_choice == "Rock":
            view['win_lose_label'].text = "YOU LOSE!"
            
        elif com_choice == "Paper":
            view['win_lose_label'].text = "YOU WIN!"
            
        
    

def rock_button_touch_up_inside(sender):
    
    
    view['user_choice_label'].text = "Rock"
    generate_random_number_and_choose()
    
    global user_choice
    user_choice = "Rock"
    
    decide_who_wins()
    

def scissor_button_touch_up_inside(sender):
    generate_random_number_and_choose()
    
    view['user_choice_label'].text = "Scissor"
    
    global user_choice
    user_choice = "Scissor"
    
    decide_who_wins()
    
def paper_button_touch_up_inside(sender):
    generate_random_number_and_choose()
    
    view['user_choice_label'].text = "Paper"
    
    global user_choice
    user_choice = "Paper"
    
    decide_who_wins()
    
view = ui.load_view()
view.present('sheet')
