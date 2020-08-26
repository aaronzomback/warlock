class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.save
  end

  def show
    @product = Product.friendly.find(params[:id])
  end



  def product_params
    Params.require(:product).permit(:title, :description, :price, :cover_image, :image_1, :image_2, :image_3 )
  end



end
