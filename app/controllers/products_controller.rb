class ProductsController < ApplicationController
  def new
    @product = Product.new
  end

  def create
    @product = Product.new(name: params[:name],image: params[:image])
    if @product.save
      redirect_to admin_product_path
    else
      render 'new'
    end
  end

  def product
    @data = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to admin_product_path, notice: 'Home was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :image)
  end
end
  
