class GuessesController < ApplicationController
  def index
    # params = {"q1"=>"1", "q2"=>"4", "q3"=>"5"}

    @user_first = params["q1"]
    @user_second = params["q2"]
    @user_third = params["q3"]

if @user_third.to_i > @user_second.to_i && @user_second.to_i > @user_first.to_i
  result = "Yes!"
else
  result = "No!"
end

@result = result

    render("guesses/index.html.erb")
  end

  def answer
    # params = {"q"=>"Increasing numbers"}

    @user_answer = params["q"]

    render("guesses/answer.html.erb")
  end
end
