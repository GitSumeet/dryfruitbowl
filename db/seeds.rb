# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)
dry_fruits = DryFruit.create(
[
  { :name => 'Apricot', :scientificname => 'Prunus armeniaca', :energy => 241, :fat => 0.5, :protein => 3.4, :imagesmall => 'apricot.jpg', :imagelarge1 => 'apricot1.jpg', :imagelarge2 => 'apricot2.jpg', :imagelarge3 => 'apricot3.jpg', :vitamin_a => 0, :vitamin_b1 => 0, :vitamin_b2 => 0, :vitamin_b3 => 0, :vitamin_b5 => 0, :vitamin_b6 => 0, :vitamin_b9 => 0, :vitamin_b12 => 0, :vitamin_c => 1, :vitamin_d => 0, :vitamin_e => 0, :vitamin_k => 0, :carbohydrates => 0, :calcium => 0, :iron => 2.7, :magnesium => 0, :manganese => 0, :phosphorus => 0, :potassium => 0, :sodium => 0, :zinc => 0, :about => 'The apricot is a small tree, 8-12 m (26-39 ft) tall, with a trunk up to 40 cm (16 in) in diameter and a dense, spreading canopy. The leaves are ovate, 5-9 cm (2.0-3.5 in) long and 4-8 cm (1.6-3.1 in) wide, with a rounded base, a pointed tip and a finely serrated margin.', :benefits => '', :sideeffects => '', :extra => '' },
  { :name => 'Almond', :scientificname => 'Prunus dulcis', :energy => 576, :fat => 49.42, :protein => 21.22, :imagesmall => 'almond.jpg', :imagelarge1 => 'almond1.jpg', :imagelarge2 => 'almond2.jpg', :imagelarge3 => 'almond3.jpg', :vitamin_a => 0, :vitamin_b1 => 0.211, :vitamin_b2 => 1.014, :vitamin_b3 => 3.385, :vitamin_b5 => 0.469, :vitamin_b6 => 0.143, :vitamin_b9 => 50, :vitamin_b12 => 0, :vitamin_c => 0, :vitamin_d => 0, :vitamin_e => 26.2, :vitamin_k => 0, :carbohydrates => 21.7, :calcium => 264, :iron => 3.72, :magnesium => 268, :manganese => 2.285, :phosphorus => 484, :potassium => 705, :sodium => 5, :zinc => 3.08, :about => 'The almond is a species of tree native to the Middle East and South Asia. "Almond" is also the name of the edible and widely cultivated seed of this tree.', :benefits => '', :sideeffects => '', :extra => '' },
  { :name => 'Cashew', :scientificname => 'Anacardium occidentale', :energy => 553, :fat => 43.85, :protein => 18.22, :imagesmall => 'cashew.jpg', :imagelarge1 => 'cashew1.jpg', :imagelarge2 => 'cashew2.png', :imagelarge3 => 'cashew3.jpg', :vitamin_a => 0, :vitamin_b1 => 0.42, :vitamin_b2 => 0.06, :vitamin_b3 => 1.06, :vitamin_b5 => 0.86, :vitamin_b6 => 0.42, :vitamin_b9 => 25, :vitamin_b12 => 0, :vitamin_c => 0.5, :vitamin_d => 0, :vitamin_e => 0.9, :vitamin_k => 0, :carbohydrates => 30.19, :calcium => 37, :iron => 6.68, :magnesium => 292, :manganese => 1.66, :phosphorus => 593, :potassium => 660, :sodium => 12, :zinc => 5.78, :about => 'The cashew is a tree in the family Anacardiaceae. Its English name derives from the Portuguese name for the fruit of the cashew tree, caju, which in turn derives from the indigenous Tupi name, acaju. Originally native to Northeast Brazil, it is now widely grown in tropical climates for its cashew seeds and cashew apples.', :benefits => '', :sideeffects => '', :extra => '' },
  { :name => 'Dates', :scientificname => 'Phoenix dactylifera', :energy => 282, :fat => 0.39, :protein => 2.45, :imagesmall => 'dates.jpg', :imagelarge1 => 'dates1.jpg', :imagelarge2 => 'dates2.jpg', :imagelarge3 => 'dates3.jpg', :vitamin_a => 10, :vitamin_b1 => 0.052, :vitamin_b2 => 0.066, :vitamin_b3 => 1.274, :vitamin_b5 => 0.589, :vitamin_b6 => 0.165, :vitamin_b9 => 19, :vitamin_b12 => 0, :vitamin_c => 0.4, :vitamin_d => 0, :vitamin_e => 0.05, :vitamin_k => 2.7, :carbohydrates => 75.03, :calcium => 39, :iron => 1.02, :magnesium => 43, :manganese => 0.262, :phosphorus => 62, :potassium => 656, :sodium => 2, :zinc => 0.29, :about => 'Dates have been a staple food of the Middle East and parts of South Asia for thousands of years. They are believed to have originated around Iraq, and have been cultivated since ancient times from Mesopotamia to prehistoric Egypt, possibly as early as 4000 BCE. The Ancient Egyptians used the fruits to be made into date wine, and ate them at harvest. There is archaeological evidence of date cultivation in eastern Arabia in 6000 BCE', :benefits => '', :sideeffects => '', :extra => '' }  
])
  
users = User.create(
[
  { :email => 'abhimanyusirohi@gmail.com', :firstname => 'Abhimanyu', :lastname => 'Sirohi', :passwordhash => '', :dob => DateTime.new(1980, 6, 28), :height => 178, :weight => 88, :picture => 'abhi.jpg' }
]
)

bowls = Bowl.create(
[
  { :userid => 1, :name => 'MyBowl 1', :colour => '#f0f0f0', :created => DateTime.new(2012, 12, 9), :modified => DateTime.new(2012, 12, 9) }
]
)

contents = Content.create(
[
  { :bowlid => 1, :dryfruitid => 1, :quantity => 10 },
  { :bowlid => 1, :dryfruitid => 2, :quantity => 5 }
]
)
