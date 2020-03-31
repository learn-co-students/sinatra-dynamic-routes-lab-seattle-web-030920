require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1 + " "+ @word2 + " "+@word3 + " "+@word4 + " "+@word5}."
  end

  # This is a sample dynamic route.
  get "/reversename/:name" do
    @user_name = params[:name]
    "Hello #{@user_name.reverse}!"
  end

  get '/say/:number/:phrase' do
    answer = ''
    params[:number].to_i.times do
      answer += params[:phrase]
    end
    answer
  end

  get '/square/:number' do 
    @num1 = params[:number].to_i
    "#{@num1*@num1}"
  end

  get '/:operation/:num1/:num2' do 
    num1 = params[:num1].to_i
    num2 = params[:num2].to_i
    case params[:operation]
    when 'add'
     (num1 + num2).to_s
    when 'subtract'
      (num1 - num2).to_s
    when 'multiply'
      (num1 * num2).to_s
    when 'divide'
      (num1 / num2).to_s
    end
  end
end