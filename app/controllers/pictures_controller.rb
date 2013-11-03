class PicturesController < ApplicationController
  def show
   @picture = Picture.find(params[:id])
  end

  def index
   @picture = Picture.all
  end

end
