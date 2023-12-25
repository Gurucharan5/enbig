class PagesController < ApplicationController
    def home 
        @home = Home.all
        puts "------------@home-------------"+@home.inspect
    end
    def show
        @home = Home.find(params[:id])
    end
    def products
        @product = Product.all
    end

    def health
    end

    def business
    end

    def blog
        @blog = Blog.all
    end

    def contact
    end

    def aboutus
    end
end
