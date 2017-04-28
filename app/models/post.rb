class Post < ApplicationRecord
  include ActiveModel::ForbiddenAttributesProtection

  belongs_to :city
  validates :content, presence: true
  validates :title, presence: true

end
