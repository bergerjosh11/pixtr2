class Image < ActiveRecord::Base
  belongs_to :gallery
  belongs_to :user
  has_many :comments
  #has_many_and_belongs_to_many :groups
  has_many :taggings
  has_many :tags, through: :taggings
  acts_as_taggable
  #acts_as_taggable # Alias for acts_as_taggable_on :tags
  #acts_as_taggable_on :gallery, :images

  validates :name, :description, :url, presence: true
  validates :url, presence: true, uniqueness: true
end
