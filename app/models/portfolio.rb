class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image
  #the self refers to an indvidual item, portfolio 
  def self.angular
    where(subtitle: "Angular")
  end
  #same as the above
  scope :ruby_on_rails_portfolio, -> { where(subtitle: "Ruby on Rails") }
  
  after_initialize :set_defaults 
  
  def set_defaults
    main_image ||= "https://placeholdit.imgix.net/~text?txtsize=33&txt=600%C3%97400&w=600&h=400"
    thumb_image ||= "https://placeholdit.imgix.net/~text?txtsize=33&txt=350%C3%97200&w=350&h=200"
  end
end
