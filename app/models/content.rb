class Content < ActiveRecord::Base
  attr_accessible :bowl_id, :dryfruit_id, :id, :quantity
  
  belongs_to :bowl, :class_name => 'Bowl', :foreign_key => "bowl_id"
  has_one :dry_fruit, :class_name => 'DryFruit', :foreign_key => "dryfruit_id"
  
end
