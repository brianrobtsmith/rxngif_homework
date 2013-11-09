class PicturesController < ApplicationController
  def show
   @picture = Picture.find(params[:id])
  end

  def index
   @all_pictures = Picture.all
  end

  def new
  end

  def create
   p = Picture.new
   p.caption = params[:caption]
   p.source = params[:source]
   p.save
   redirect_to "http://localhost:3000/all_pictures"
  end

  def destroy
   p = Picture.find(params[:id])
   p.destroy
  redirect_to "http://localhost:3000/all_pictures"
  end

  def edit
   @p = Picture.find(params[:id])
   @caption = @p.caption
   @source = @p.source
   @id = params[:id]
  end

  def update
   p = Picture.find(params[:id])
   p.caption = params[:caption]
   p.source = params[:source]
   p.save
   redirect_to "http://localhost:3000/all_pictures"
  end


end
