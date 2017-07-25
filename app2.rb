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
	"your name is #{firstname} #{lastname} and you are #{age} years old"
end
