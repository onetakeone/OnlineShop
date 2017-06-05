#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:onlineshop.db3"

class Product < ActiveRecord::Base
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

post '/cart' do
	erb 'hello'
end