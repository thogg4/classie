class Asset < ActiveRecord::Base
  belongs_to :ad  

  has_attached_file :image
end
