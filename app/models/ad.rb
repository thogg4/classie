class Ad < ActiveRecord::Base
  attr_accessible :title, :description, :price, :city, :state, :views, :cat, :sub_cat, :image

  belongs_to :user
  has_many :assets
  
  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: { only_integer: true, message: 'this is not a valid number' }
  validates :cat, presence: true
  validates :sub_cat, presence: true
  validates_attachment_presence :image

  has_attached_file :image, styles: { thumb: "300x200#", full: "550x450#" }
  
  def self.search(search)
    if search
      where('sub_category LIKE ?', search)
    else
      find(:all)
    end
  end
  
end
