class Post < ApplicationRecord
  # include ActiveModel::ForbiddenAttributesProtection

  belongs_to :city
  belongs_to :user
  validates :content, presence: true
  validates :title, length: {in: 1..200}, presence: true

end
