class HomeController < ApplicationController
    def new
      @home = Home.new
    end
  
    def create
      puts "----------------0"
      @home = Home.new(name: params[:name],image: params[:image])
      puts "----------------0"
      puts "----------------0"+@home.inspect
      if @home.save
        redirect_to admin_home_path
      else
        render 'new'
      end
    end
  
    def show
      @home = Home.find(params[:id])
    end
    
    def home
      @data = Home.all
    end
    def all
      @home = Home.all
    end

    def destroy
      @home = Home.find(params[:id])
      @home.destroy
  
      respond_to do |format|
        format.html { redirect_to admin_home_path, notice: 'Home was successfully deleted.' }
        format.json { head :no_content }
      end
    end
  
    private
  
    def product_params
      params.require(:home).permit(:name, :image)
    end
end
