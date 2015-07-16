require 'bundler'
Bundler.require
require './models/model.rb'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/index' do
   
    @clothing1 = params{:firstclothing}
    @clothing2 = params{:secondclothing}
    clothing = Eightball.new
    clothing.add(@clothing1)
    clothing.add(@clothing2)
    @selected = clothing.rselect
     erb :index
  end
  
    
  
  
end