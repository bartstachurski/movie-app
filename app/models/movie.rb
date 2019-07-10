class Movie < ApplicationRecord
  has_many :actors
  validates :year, presence: true
  validates :year, numericality: { greater_than: 1878 }
  validates :title, presence: true
  validates :title, length: { maximum: 255 }
  validates :title, uniqueness: true
  validates :director, presence: true
  validates :plot, presence: true
  validates :plot, length: { minimum: 10 }
end
