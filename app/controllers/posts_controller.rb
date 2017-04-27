class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
     @confirm = "Are you sure you want to delete this review: #{@post.title} ?"
  end

  def new
    @city = City.find(params[:city_id])
    @post = Post.new
    render :new

  end

  def create
    @city = City.find(params[:city_id])

    @post = Post.create(post_params)
    if @post.save
      redirect_to city_post_path(@city, @post.id)
    else
      redirect_to city_path(@city)
    end

  end

  def destroy
    @city = City.find(params[:city_id])

    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "'#{@post.title}' post was deleted"
    redirect_to city_path(@city)
  end

  private
    def post_params
      params.require(:post).permit(:title, :content)

    end

end
