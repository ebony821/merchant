class LineItemsController < ApplicationController
 include CurrentCart
 before_action :set_cart

  def create
    product = Produc.find(params[:product.id])
    @line_item = @cart.line_items.build(product: product, price:product.price)

    if @line_item.save
      flash[:notice] = "#{product.name} was added to your cart"
      redirect_to shop-path
    else
      flash.now [:alert] = "Could not add the item to your cart"
      redirect_to :back
    end
  end

end
