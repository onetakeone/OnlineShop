#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:onlineshop.db3"

class Product < ActiveRecord::Base
end

class Order < ActiveRecord::Base
end

get '/' do
	@product = Product.all
	erb :index
end

get '/about' do
	erb :about
end

get '/product/:id' do
	@product = Product.find params[:id]
	erb :product
end

# get '/cart' do
# 	erb :cart
# end

post '/cart' do
	@orderbox = Order.new params[:order]
	@orderbox.save
	erb :cart
end

post '/lucky' do
	@orderbox = Order.new params[:order]
	@orderbox.save
	@alert_success = 'order complete!'
	erb :about
end

