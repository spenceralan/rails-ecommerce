class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  before_action except: [:index, :show] do
    redirect_to new_user_session_path unless admin
  end

  def index
    @products = Product.all.sort
    @order_item = current_order.order_items.new
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product Saved Sucessfully"
      redirect_to root_path
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

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "Product Sucessfully Updated"
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    Product.find(params.fetch(:id)).destroy
    flash[:notice] = "Product Sucessfully Deleted"
    redirect_to root_path
  end


  private
  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end
