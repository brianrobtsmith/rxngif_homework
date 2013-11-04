class PicturesController < ApplicationController
  def show
   @picture = Picture.find(params[:id])
  end

  def index
   @picture = Picture.all
  end

  def new

  end

  def create
   p = Picture.new
   p.caption = params[:caption]
   p.source = params[:source]
   p.save

  end

  def destroy
   p = Picture.find(params[:id])
   p.destroy
  end

  def edit
  end


end
