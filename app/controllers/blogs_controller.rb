class BlogsController < ApplicationController

  before_action :move_to_index, except: :top


  def top
    @content = Content.all.order("id DESC").page(params[:page]).per(5)
  end
    

  def new
  end

  def create
    Content.create(title: params[:title], text: params[:text], user_id: current_user.id)
    redirect_to "/"
  end

  def destroy
    bloglist = Content.find(params[:id])
    if bloglist.user_id == current_user.id
      bloglist.destroy
    end
    redirect_to "/"
  end

  def edit
    @content = Content.find(params[:id])
  end

  def update
    bloglist =  Content.find(params[:id])
    if bloglist.user_id == current_user.id
      bloglist.update(bloglist_params)
    end
    redirect_to "/"
  end

  private
  def bloglist_params
    params.permit(:title, :text)
  end

  def move_to_index
    redirect_to :action => "top" unless user_signed_in?
  end
end

