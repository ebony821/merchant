class StoreFrontController < ApplicationController
  def index
    if params[:cat_id]
      #i only want to see the stuff in that category
      @category = Category.find(params[:cat_id])  #finds only searches by id
      @products = Product.where(category_id:params[:cat_id])  #finds where the category is
    else
    @products =Product.all
  end

  end

  def about
  end
end
