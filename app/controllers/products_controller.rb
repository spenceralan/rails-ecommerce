class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  before_action except: [:index, :show] do
    redirect_to new_user_session_path unless current_user.try(:admin)
  end

  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to '/'
    else
      render :new
    end
  end

  def show
    @product = Product.find(params.fetch(:id))
    respond_to do |format|
      format.html {  }
      format.js
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end
