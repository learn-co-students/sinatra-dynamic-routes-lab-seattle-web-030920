require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    "Try /reversename/:name, /square/:number, /say/:number/:phrase, /say/:word1/:word2/:word3/:word4/:word5, /:operation/:number1/:number2"
  end

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
   (params[:number].to_i ** 2).to_s
  end
  
  get '/say/:number/:phrase' do
    result = ''
    params[:number].to_i.times do
      result += params[:phrase]
        end 
        result
      end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
  "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    result = 'I need a mathematics operation!'

    case params[:operation]
    when 'add'
      result = (num1 + num2).to_s
    when 'subtract'
      result = (num2 - num1).to_s
    when 'multiply'
      result = (num1 * num2).to_s
    when 'divide'
      result = (num1 / num2).to_s
    end
  end
end
