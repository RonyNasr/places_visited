require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/place")

get("/") do
  @places = Place.all()
  erb(:index)
end

post("/places") do
  place = Place.new(params.fetch("place_name"))
  place.save()
  erb(:result)
end
