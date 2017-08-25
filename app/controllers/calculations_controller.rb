class CalculationsController < ApplicationController
    include Math
    def square
        @number = params[:user_text].to_f
        @square = @number*@number
      
      render("square.html.erb")  
    end
    
    def sqrt
        @number = params[:user_text].to_f
        @sqrt = Math.sqrt(@number)
    end
end