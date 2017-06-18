class TodoController < ApplicationController
    def index
    end
    def show
        todo_id = params[:id]
       # If user selects Coke
       #todo_des = "You get a coke, congrats!"
       if todo_id == '1'
           @todo_description ="You get a coke Congrats!"
        elsif todo_id == '2'
            @todo_description= "You get a Pepsi Congrats"
        else 
            @todo_description = "You'll have an infinite source of water forever and be banned from Coke and Pepsi as well!"
       end
       #If user selects "I like pepsi"
       #todo_description= "You like pepsi, Congrats!"
    end
end

#if statement creates a page apart from the original

