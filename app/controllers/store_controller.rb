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

 end
end
