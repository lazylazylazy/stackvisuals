require 'sinatra'
require 'sinatra/partial'
require 'sinatra/json'
require 'stackable'

set :partial_template_engine, :erb

get "/1" do
	@filename = 'parisvsdetroit.json'
 	erb :index
end

get "/2" do
	@filename = 'berlinchicargo.json'
	erb :index
end

get "/3" do
	@filename = 'bristolmanchester.json'
	# File.read('public/bristolmanchester.json')
	erb :index
end

get "/4" do
	@filename = 'seattlemississauga.json'
	erb :index
end

get "/5" do
	@filename = 'sydneyboulder.json'
	erb :index
end

get "/6" do
	@filename = 'parisberlin.json'
	erb :index
end

get "/7" do
	@filename = 'shanghaibangkok.json'
	erb :index
end
