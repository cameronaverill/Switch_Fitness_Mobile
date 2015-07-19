require "sinatra"

get "/" do 
  erb :home_page
end

get "/pushups" do 
  erb :pushups  
end

get "/squats" do 
    erb :squats
end

get "/treadmill" do 
    erb :treadmill
end

get "/trainers" do 
    erb :trainers
end