class List < ApplicationRecord
  has_many :bookmarks
  validates :name, presence: true
  validates :name, uniqueness: true
  has_many :movies, through: :bookmarks, dependent: :destroy
end
