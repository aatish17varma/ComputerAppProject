require 'bundler'
Bundler.require
require './models/model.rb'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/results' do

    slist = params[:firstclothing].split(', ')
    shirts = Eightball.new
    
    slist.each do |x|
      shirts.add(x)
    end
    
    plist = params[:secondclothing].split(', ')
    pants = Eightball.new
    
    plist.each do |x|
      shirts.add(x)
    end
    
    @selected = [shirt.rselect, pants.rselect]
    
    
    
#     puts params
#     puts params[:firstclothing]

#     puts params[:firstclothing[0]]

#     shirt = Eightball.new
#     pants = Eightball.new
#     shirt.add(params[:firstclothing])
#     pants.add(params[:secondclothing])
#     @selected = [shirt.rselect, pants.rselect]
    
    ...
    erb :results
  end
  
end