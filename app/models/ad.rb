class Ad < ActiveRecord::Base
  belongs_to :user
  has_many :assets
  
  validates_presence_of :sub_category  
  
  
  #this is to search
  def self.search(search)
    if search
      find(:all, :conditions => ['sub_category LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
  
  
end
