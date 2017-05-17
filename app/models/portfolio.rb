class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image
  #the self refers to an indvidual item, portfolio 
  def self.angular
    where(subtitle: "Angular")
  end
  #same as the above
  scope :ruby_on_rails_portfolio, -> { where(subtitle: "Ruby on Rails") }
end
