class TodoController < ApplicationController
    def index
    end
    def new
    end
    def create
        t = Todo.new
        t.description = params['description']
        t.pomodoro_estimate = params['pomodoro_estimate']
        t.save
        redirect_to "/todo/show/#{ t.id }"
    end
    def show
    @todo_description = Todo.find_by_id(params[:id]).description
=begin    
    @todo=Todo.find_by_id(params[:id]) example
        todo_id = params[:id]
    If user selects Coke
        todo_des = "You get a coke, congrats!"
    if todo_id == '1'
        @todo_description ="You get a coke Congrats!"
    elsif todo_id == '2'
        @todo_description= "You get a Pepsi Congrats"
    else
        @todo_description = "You'll have an infinite source of water forever and be banned from Coke and Pepsi as well!"
    end
=end
       #If user selects "I like pepsi"
       #todo_description= "You like pepsi, Congrats!"
    end
end

#if statement creates a page apart from the original

