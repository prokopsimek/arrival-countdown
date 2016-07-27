class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    @image = Image.order(:created_at).last
    @image_url = "https://s3-eu-west-1.amazonaws.com/arrival-countdown/#{@image.name}.jpg"
  end

end
