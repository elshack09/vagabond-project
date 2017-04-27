class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
      @post = Post.find(params[:id])
  end

  def update

  end

  def new
    @post = Post.new
    @city = City.find(params[:city_id])
  end

  def create
    @post = Post.new(post_params)
    if post.save
      city = City.find(params[:city_id])
      city.posts << @post
      render json: @post, status: :created
    else
      render json: @post, status: :uporocessable_entity
    end
  end

  def destroy

  end

  private
    def post_params
      params.require(:post).permit(:title, :content)
    end

end
