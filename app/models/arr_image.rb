class ArrImage < ActiveRecord::Base

  def url
    "https://s3-eu-west-1.amazonaws.com/arrival-countdown/public/#{name}.jpg"
  end

end
