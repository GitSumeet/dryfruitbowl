class User < ActiveRecord::Base
  attr_accessible :dob, :email, :firstname, :height, :id, :lastname, :passwordhash, :picture, :weight
end
