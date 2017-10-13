class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    #makes it so the user has to put a name value in the field 
    validates_presence_of :name
         
    def first_name
      #self.name the 'self' is referring to a specific instance, the current user 'name'
      #'split' splits a string into its own array. "John Smith".split = ['john', 'smith'] split can take args where to split
      # split(", ") splits at every comma and space 
      #split.first 'first' calls the first element in the array .split[0] will also do the same thing
      self.name.split.first 
    end
    
    def last_name
      #.last is the last element 
       self.name.split.last 
    end
end
