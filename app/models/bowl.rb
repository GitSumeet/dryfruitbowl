class Bowl < ActiveRecord::Base
  attr_accessible :colour, :created, :description, :id, :modified, :name, :user_id
  
  belongs_to :user, :foreign_key => "user_id"
  has_many :contents
  
end
