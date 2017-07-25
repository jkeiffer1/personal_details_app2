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
	"your name is #{firstname} #{lastname}, you are #{age} years old, and you have #{hair} hair."
end
