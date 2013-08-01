class Ad < ActiveRecord::Base
<<<<<<< HEAD
  attr_accessible :title, :description, :city, :state, :views, :sub_cat

  belongs_to :user
  has_many :assets
  
  validates :title, presence: true
  validates :description, presence: true
  validates :sub_cat, presence: true
  
  def self.search(search)
    if search
      where('sub_category LIKE ?', search)
=======
  belongs_to :user
  has_many :assets
  
  validates_presence_of :sub_category  
  
  
  #this is to search
  def self.search(search)
    if search
      find(:all, :conditions => ['sub_category LIKE ?', "%#{search}%"])
>>>>>>> d4a4f1bcc942c20df1b86ac333158c9e7d25fbed
    else
      find(:all)
    end
  end
  
<<<<<<< HEAD
=======
  
>>>>>>> d4a4f1bcc942c20df1b86ac333158c9e7d25fbed
end
