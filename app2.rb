require "sinatra"
enable :sessions

get '/' do
 "hello world"
erb :names
end