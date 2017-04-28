class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
     @confirm = "Are you sure you want to delete this review: #{@post.title} ?"
  end

  def edit
      @post = Post.find(params[:id])
  end

  def update
       @post = Post.find(params[:id])
       @city = City.find(params[:city_id])
       @post.update(post_params)

       redirect_to city_path(@city)
  end

  def new
    @city = City.find(params[:city_id])
    @post = Post.new
    @confirm = "You're post was submitted for #{@city.name}!"
    render :new

  end

  def create
    @city = City.find(params[:city_id])

    post = Post.create(post_params)
    city = post.city
    post.save
    if post.save
      redirect_to city_post_path(city, post)
    else
      redirect_to city_path(city)
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
      .merge(city_id: params[:city_id])

    end

end
