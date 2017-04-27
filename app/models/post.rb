class Post < ApplicationRecord
  include ActiveModel::ForbiddenAttributesProtection

  belongs_to :city
  validates :title, :content, presence: true

end
