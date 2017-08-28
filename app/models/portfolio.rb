class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies, 
  reject_if: lambda { |attrs| attrs['name'].blank?}
  include Placeholder
  validates_presence_of :title, :body
  #the self refers to an indvidual item, portfolio 
  def self.angular
    where(subtitle: "Angular")
  end
  #same as the above
  scope :ruby_on_rails_portfolio, -> { where(subtitle: "Ruby on Rails") }
  
  after_initialize :set_defaults 
  
  def set_defaults
    main_image ||= Placeholder.image_generator(height: '600', width: '400')
    thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
  end
end
  