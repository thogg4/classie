class Ad < ActiveRecord::Base
  attr_accessible :title, :description, :city, :state, :views, :sub_cat

  belongs_to :user
  has_many :assets
  
  validates :title, presence: true
  validates :description, presence: true
  validates :sub_cat, presence: true
  
  def self.search(search)
    if search
      where('sub_category LIKE ?', search)
    else
      find(:all)
    end
  end
  
end
