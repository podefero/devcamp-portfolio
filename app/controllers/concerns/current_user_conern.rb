module CurrentUserConern
  extend ActiveSupport::Concern
  
def current_user
    super || guest_user
  end
  
  def guest_user 
    OpenStruct.new(name: "Nate",
                   first_name: "Gus",
                   last_name: 'jones',
                   email: "nay@gmail.com"
                   )
  end
end