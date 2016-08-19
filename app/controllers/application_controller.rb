class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    @image = ArrImage.order(:created_at).last
    @image_url = @image.url
  end

  def images_list
    @images = ArrImage.order('created_at DESC')
  end

end
