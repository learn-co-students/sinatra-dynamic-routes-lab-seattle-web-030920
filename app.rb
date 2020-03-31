require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do 
    @name = params[:name]
    reversed = @name.reverse 
    reversed 
  end

  get '/square/:number' do 
    @number = params[:number].to_i
    square = @number ** 2
    square.to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    string = ""
    @number.times do 
      string += @phrase
    end 
    string 
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do 
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    if @operation == "add"
      sum = @number1 + @number2
      sum.to_s
    elsif @operation == "subtract"
      diff = @number1 - @number2
      diff.to_s
    elsif @operation == "multiply"
      product = @number1 * @number2
      product.to_s
    else
      quotient = @number1/@number2
      quotient.to_s 
    end
  end

end