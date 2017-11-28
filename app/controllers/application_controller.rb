class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
  include SetSource
  
  def current_user
    super || OpenStruct.new(name: "Nate", first_name: "Gus",  last_name: 'jones', email: "nay@gmail.com")
  end
  
end
