require 'bundler'
Bundler.require
require './models/model.rb'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/results' do
<<<<<<< HEAD
    puts params
    puts params[:firstclothing]
=======
    puts params[:firstclothing[0]]
>>>>>>> 47335f855a3389204281da81e5af5a24f4d09999
    shirt = Eightball.new
    pants = Eightball.new
    shirt.add(params[:firstclothing])
    pants.add(params[:secondclothing])
    @selected = [shirt.rselect, pants.rselect]
    erb :results
  end
  
end