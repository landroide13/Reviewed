class Article < ApplicationRecord
  validates :title, presence: true, length: {minimum: 3, maximum: 25}
  validates :description, presence: true, length: {minimum: 5, maximum: 250}

  has_many :comments, dependent: :destroy
end
