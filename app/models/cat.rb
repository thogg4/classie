class Cat < ActiveRecord::Base
<<<<<<< HEAD
  attr_accessible :name, :admin, :position

  has_many :sub_cats
=======
  has_many :sub_cats
  
  attr_accessible :name, :admin, :position
>>>>>>> d4a4f1bcc942c20df1b86ac333158c9e7d25fbed
end
