class BlogsController < ApplicationController
    def new
      @blog = Blog.new
    end
  
    def create
      @blog = Blog.new(title: params[:title],image: params[:image],content: params[:content])
      if @blog.save
        redirect_to admin_blog_path
      else
        render 'blog'
      end
    end
  
    def show
      @blog = Blog.find(params[:id])
    end

    def blog
      @data = Blog.all
    end

    def destroy
      @blog = Blog.find(params[:id])
      @blog.destroy
  
      respond_to do |format|
        format.html { redirect_to admin_blog_path, notice: 'Home was successfully deleted.' }
        format.json { head :no_content }
      end
    end
  
    private
  
    def post_params
      params.require(:blog).permit(:title, :content, :image)
    end
end
