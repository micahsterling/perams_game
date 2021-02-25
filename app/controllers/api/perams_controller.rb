class Api::PeramsController < ApplicationController
  def name_capitalized
    @name = params[:name].upcase
    if @name[0] == "A"
      @message = "Hey, your name starts with the first letter of the alphabet!"
    else
      @message = "I dont have a message for you"
    end
    render 'capitalized.json.jb'
  end

  def guess
    @user_guess = params[:userguess].to_i
    if @user_guess > 44
      @message = "You guessed too high"
    elsif @user_guess < 44
      @message = "You guessed too low"
    else
      @message= "You are correct"
    end
    render 'guess.json.jb'
  end
end
