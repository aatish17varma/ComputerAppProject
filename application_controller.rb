require 'bundler'
Bundler.require
require './models/model.rb'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/results' do
    puts params
    puts params[:firstclothing]
    shirt = Eightball.new
    pants = Eightball.new
    shirt.add(params[:firstclothing])
    pants.add(params[:secondclothing])
    @selected = [shirt.rselect, pants.rselect]
    erb :results
  end
  
end