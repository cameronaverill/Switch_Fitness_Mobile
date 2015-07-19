require "sinatra"

get "/" do 
  erb :home_page
end

get "/trainers" do 
    @trainers = ["Steve", "Cuan", "Kelly"]
    erb :trainers
end

get "/:workout" do |workout|
	workouts_hash = {pushups: {image: "http://truegymfitness.com/wp-content/uploads/2014/04/push-up.jpg",
							   description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
							   sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim 
							   ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip 
							   ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate 
							   velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat 
							   cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est 
							   laborum."},
					squats: {image: "http://www.womenshealthmag.com/files/wh6_uploads/images/slide6bbell-siff-squat.jpg",
							description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
							   sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim 
							   ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip 
							   ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate 
							   velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat 
							   cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est 
							   laborum."},
					treadmill: {image: "http://ecx.images-amazon.com/images/I/81EVf9ZDxhL._SL1500_.jpg",
								description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
							   sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim 
							   ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip 
							   ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate 
							   velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat 
							   cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est 
							   laborum."}}
		@workout_selection = workout.downcase.to_sym
		@image = workouts_hash[@workout_selection][:image]
		@description = workouts_hash[@workout_selection][:description]
		erb :workout
	end
>>>>>>> refs/remotes/origin/master
