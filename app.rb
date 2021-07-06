require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do 
    n = params[:name]
    "#{n.reverse}"
  end

  get '/square/:number' do 
    num = params[:number].to_i
    final = num * num
    "#{final}"
  end

  get '/say/:number/:phrase' do 
    num = params[:number].to_i
    phrase = params[:phrase]
    (phrase * num).to_s
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    "#{word1} #{word2} #{word3} #{word4} #{word5}."
  end
    
  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    @operation = params[:operation]

  if @operation == "add"
    (num1 +num2).to_s
  elsif @operation == "subtract"
    (num1-num2).to_s
  elsif @operation == "divide"
    (num1/num2).to_s
  else @operation == "multiply"
    (num1 * num2).to_s
  end
end




end