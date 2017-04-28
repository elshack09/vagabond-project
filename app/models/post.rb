class Post < ApplicationRecord
  include ActiveModel::ForbiddenAttributesProtection

  belongs_to :city
  validates :content, presence: true
  validates :title, presence: true
  validates_length_of :title, :within => 1..200, :too_long => "pick a shorter title", :too_short => "pick a longer title"

end
