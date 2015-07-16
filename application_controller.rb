require 'bundler'
Bundler.require
require './models/model.rb'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/results' do
   puts params
    @clothing1 = params[:firstclothing]
    @clothing2 = params[:secondclothing]
    puts @clothing1
    puts @clothing2
    clothing = Eightball.new
    clothing.add(@clothing1)
    clothing.add(@clothing2)
    @selected = clothing.rselect
    puts @selected
    erb :results
  end
  
    
  
  
end