class Users::Buttons::PutsController < ApplicationController
  def create
    button = Button.find(params[:button_id])
    post = Post.find(params[:post_id])
    put = button.puts.build
    put.post = post
    if put.save
      redirect_to :back
    end
  end
end
