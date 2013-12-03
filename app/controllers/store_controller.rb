class StoreController < ApplicationController
 def index
 	@products = Product.order(:name)
 end 

 def show
 	@product = Product.find(params[:id])
 end

 def search

 end

 def search_results
 	@products = Product.where("name LIKE ?", "%#{params[:keywords]}%")
 end

 def forged
 	@forged = Product.where(:category_id => 1)
 end

 def forged_results
 	@forged = Product.where("name LIKE ?", "%#{params[:keywords]}%").where(:category_id => 1)
 end

 def light_weight
 	@light_weight = Product.where(:category_id => 2)
 end

 def light_weight_results
 	@light_weight = Product.where("name LIKE ?", "%#{params[:keywords]}%").where(:category_id => 2)
 end

 def off_road
 	@off_road = Product.where(:category_id => 3)
 end

 def off_road_results
 	@off_road = Product.where("name LIKE ?", "%#{params[:keywords]}%").where(:category_id => 3)
 end

 def classic
 	@classic = Product.where(:category_id => 4)
 end

 def classic_results
 	@classic = Product.where("name LIKE ?", "%#{params[:keywords]}%").where(:category_id => 4)
 end

 def cast
 	@cast = Product.where(:category_id => 5)
 end

 def cast_results
 	@cast = Product.where("name LIKE ?", "%#{params[:keywords]}%").where(:category_id => 5)
 end
end
