class Post < ActiveRecord::Base
  include SimpleHashtag::Hashtaggable
  
  belongs_to :user

  validates :body, :presence => true

  scope :by_date, -> { order(created_at: :desc) }
end
