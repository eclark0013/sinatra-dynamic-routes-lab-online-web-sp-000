require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    (params[:number].to_i**2).to_s
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    phrase = params[:phrase]
    phrase*num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    saying = []
    params.each_value{|word| saying << word}
    saying.join(" ")+"."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_f
    num2 = params[:number2].to_f
    case params[:operation]
    when "add"
      (num1+num2).to_s
    when "subtract"
      (num1-num2).to_s
    when "multiply"
      (num1*num2).to_s
    when "divide"
      (num1/num2).to_s
    end
  end

end