class PostsController < ApplicationController
  def new
    @post = Post.new
    render :new
  end

  def create
    @post = current_user.posts.new(posts_params)
    if @post.save
      flash[:notice] = "Chip saved!"
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
    render :edit
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(posts_params)
      flash[:notice] = "Chip edited!"
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "Chip deleted!"
    redirect_to root_path
  end

private
  def posts_params
    params.require(:post).permit(:body, :user_id)
  end
end
