class BlogsController < ApplicationController

  def index
    @blog = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
  Blog.create(create_params)
  redirect_to controller: :blogs, action: :index
  end

  def edit
  end

  def destroy
  end

  private
  def create_params
    params.require(:text).permit(:text)
  end

 
end
