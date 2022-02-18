class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies
  validates :name, uniqueness: true
  validates :name, presence: true
  has_many :movies, through: :bookmarks, dependent: :destroy
  has_many_attached :photos
end
