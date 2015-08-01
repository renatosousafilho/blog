class CommentController < ApplicationController
  def index
  	respond_to do |format|
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
        format.csv { render :show, status: :created, location: @post }
    end
  end

  def new
  end

  def edit
  end

  def show
  end
end
