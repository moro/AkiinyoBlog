class Post < ActiveRecord::Base
  attr_accessible :body, :title
  belongs_to :user
  has_many :comments
  has_many :buttons
  has_many :puts

  validates :body, presence: true
  validates :title, presence: true

  default_scope order: 'posts.created_at DESC'
end
