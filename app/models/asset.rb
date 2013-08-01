class Asset < ActiveRecord::Base
  belongs_to :ad  
<<<<<<< HEAD

  has_attached_file :image
=======
  mount_uploader :image, ImageUploader
>>>>>>> d4a4f1bcc942c20df1b86ac333158c9e7d25fbed
end
