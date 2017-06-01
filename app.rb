#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:onlineshop.db3"

class Products < ActiveRecord::Base
end

get '/' do
	@product = Products.all
	erb :index
end

get '/about' do
	erb :about
end

get '/product/:id' do
	@product = Products.find params[:id]
	erb :product
end