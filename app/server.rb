require 'sinatra'
require 'sinatra/partial'
require 'sinatra/json'
require 'stackable'

set :partial_template_engine, :erb

get "/" do
	File.read('public/jobs.json')
 	erb :index
end

get "/data" do
	
end