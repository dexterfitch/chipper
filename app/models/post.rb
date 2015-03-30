class Post < ActiveRecord::Base
  belongs_to :user

  validates :body, :presence => true

  scope :by_date, -> { order(created_at: :desc) }
end
