require "sinatra"

get '/' do
 "hello world"
erb :names
end

post '/name' do
	firstname = params[:firstname]
	lastname = params[:lastname]
#	"#your firstname is #{firstname} and your last name is #{lastname}"
redirect '/age?firstname=' + firstname + "&lastname=" + lastname
end

get '/age' do
	firstname = params[:firstname]
	lastname = params[:lastname]
	erb :age, locals:{firstname: firstname, lastname: lastname}
end

post '/age' do
	firstname = params[:firstname]
	lastname = params[:lastname]
	age = params[:age]
#	"your name is #{firstname} #{lastname} and you are #{age} years old"
redirect '/hair?firstname=' + firstname + "&lastname=" + lastname + "&age=" + age
end

get '/hair' do
	firstname = params[:firstname]
	lastname = params[:lastname]
	age = params[:age]
	erb :hair, locals:{firstname: firstname, lastname: lastname, age: age}
end

post '/hair' do
	firstname = params[:firstname]
	lastname = params[:lastname]
	age = params[:age]
	hair = params[:hair]
#	"your name is #{firstname} #{lastname}, you are #{age} years old, and you have #{hair} hair."
redirect '/eyes?firstname=' + firstname + "&lastname=" + lastname + "&age=" + age + "&hair=" + hair
end

get '/eyes' do
	firstname = params[:firstname]
	lastname = params[:lastname]
	age = params[:age]
	hair = params[:hair]
	erb :eyes, locals:{firstname: firstname, lastname: lastname, age: age, hair: hair}
end

post '/eyes' do
	firstname = params[:firstname]
	lastname = params[:lastname]
	age = params[:age]
	hair = params[:hair]
	eyes = params[:eyes]
#	"your name is #{firstname} #{lastname}, you are #{age} years old, and you have #{hair} hair and #{eyes} eyes."
redirect '/food_drink?firstname=' + firstname + "&lastname=" + lastname + "&age=" + age + "&hair=" + hair + "&eyes=" + eyes
end

get '/food_drink' do
	firstname = params[:firstname]
	lastname = params[:lastname]
	age = params[:age]
	hair = params[:hair]
	eyes = params[:eyes]
	erb :food_drink, locals:{firstname: firstname, lastname: lastname, age: age, hair: hair, eyes: eyes}
end

post '/food_drink' do
	firstname = params[:firstname]
	lastname = params[:lastname]
	age = params[:age]
	hair = params[:hair]
	eyes = params[:eyes]
	food = params[:food]
	drink = params[:drink]
#	"your name is #{firstname} #{lastname}, you are #{age} years old, and you have #{hair} hair and #{eyes} eyes. You like #{food} and #{drink}"
redirect '/fnums?firstname=' + firstname + "&lastname=" + lastname + "&age=" + age + "&hair=" + hair + "&eyes=" + eyes + "&food=" + food + "&drink=" + drink
end

get '/fnums' do
	firstname = params[:firstname]
	lastname = params[:lastname]
	age = params[:age]
	hair = params[:hair]
	eyes = params[:eyes]
	food = params[:food]
	drink = params[:drink]
	erb :fnums, locals:{firstname: firstname, lastname: lastname, age: age, hair: hair, eyes: eyes, food: food, drink: drink}
end

post '/fnums' do
	firstname = params[:firstname]
	lastname = params[:lastname]
	age = params[:age]
	hair = params[:hair]
	eyes = params[:eyes]
	food = params[:food]
	drink = params[:drink]
	num1 = params[:num1]
	num2 = params[:num2]
	num3 = params[:num3]
#	"your name is #{firstname} #{lastname}, you are #{age} years old, and you have #{hair} hair and #{eyes} eyes. You like #{food} and #{drink}, and your 3 favorite numbers are #{num1}, #{num2}, and #{num3}."
redirect '/results?firstname=' + firstname + "&lastname=" + lastname + "&age=" + age + "&hair=" + hair + "&eyes=" + eyes + "&food=" + food + "&drink=" + drink +"&num1=" + num1 + "&num2=" + num2 + "&num3=" + num3
end

get '/results' do
	firstname = params[:firstname]
	lastname = params[:lastname]
	age = params[:age]
	hair = params[:hair]
	eyes = params[:eyes]
	food = params[:food]
	drink = params[:drink]
	num1 = params[:num1]
	num2 = params[:num2]
	num3 = params[:num3]
	erb :results, locals:{firstname: firstname, lastname: lastname, age: age, hair: hair, eyes: eyes, food: food, drink: drink, num1: num1, num2: num2, num3: num3}
end

post '/results' do
	firstname = params[:firstname]
	lastname = params[:lastname]
	age = params[:age]
	hair = params[:hair]
	eyes = params[:eyes]
	food = params[:food]
	drink = params[:drink]
	num1 = params[:num1]
	num2 = params[:num2]
	num3 = params[:num3]
end