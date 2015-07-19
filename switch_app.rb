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
    @trainers = ["Steve", "Cuan", "Kelly"]
    erb :trainers
end