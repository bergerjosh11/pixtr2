class User < ActiveRecord::Base
  has_many :comments
  has_many :group_memberships
  has_many :groups, through: :group_memberships
  has_many :images
  #acts_as_taggable # Alias for acts_as_taggable_on :tags
 # acts_as_taggable_on :skills, :interests
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
end
