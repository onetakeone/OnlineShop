class AddProducts < ActiveRecord::Migration[5.1]
  def change
  	Product.create(
  		:title => 'Pancakes', 
  		:desc => 'tasty sugar pancakes with berries, choco and vanilla.js', 
  		:price => 12,	
  		:netto => 350, 
  		:is_breakfast => true,	
  		:is_best_offer => false, 
  		:path_to_image => '/images/breakfast.jpg',
  		:path_to_image_sm => '/images/breakfast_sm.jpg'
  	)

  	Product.create(
  		:title => 'Sushi', 
  		:desc => 'Delicious american-japan rolls with caviar and shrimps', 
  		:price => 18, 
  		:netto => 300, 
  		:is_breakfast => false, 
  		:is_best_offer => true, 
  		:path_to_image => '/images/sushi.jpg',
  		:path_to_image_sm => '/images/sushi_sm.jpg'
  	)

	  Product.create( 
	  :title => 'Dinner', 
	  :desc => 'Perfect full folks dinner with grilled ribs and potatoes', 
	  :price => 25, 
	  :netto => 450, 
	  :is_breakfast => false, 
	  :is_best_offer => false, 
	  :path_to_image => '/images/dinner.jpg',
	  :path_to_image_sm => '/images/dinner_sm.jpg'
	  )
	end
end
