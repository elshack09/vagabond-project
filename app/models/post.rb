class Post < ApplicationRecord
  # include ActiveModel::ForbiddenAttributesProtection

  belongs_to :city
  belongs_to :user
  validates :content, presence: true
  validates :title, length: {in: 1..200}, presence: true

  # validates_length_of :title, :within => 1..200, :too_long => "pick a shorter title", :too_short => "pick a longer title"

end
