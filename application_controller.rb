require 'bundler'
Bundler.require
require './models/model.rb'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/results' do
    erb :results
    @clothing1 = params{:firstclothing}
    @clothing2 = params{:secondclothing}
    
    
  
  
  
  end
  
end