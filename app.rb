require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
      @square = (params[:number].to_i) ** 2.to_i      
      "#{@square.to_s}"
  end

  get '/say/:number/:phrase' do
    @output = ""
    value1 = params[:number].to_i
    value1.times do
      @output = "#{@output}#{params[:phrase]}"
    end
    @output
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do    
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

    get '/:operation/:number1/:number2' do

      @number1 = params[:number1].to_i
      @number2 = params[:number2].to_i    
      @return_val = 0  
      case params[:operation]
      when "add"
        @return_val = (@number1 + @number2)
      when "subtract"
        @return_val = (@number1 - @number2)
      when "multiply"
        @return_val = (@number1 * @number2)
      when "divide"
        @return_val = (@number1.to_f / @number2.to_f)
      else      
      end
      @return_val.to_s
    end


end