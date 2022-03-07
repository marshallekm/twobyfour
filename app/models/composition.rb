class Composition < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :memory_list_id, :instrumental_id, presence: true
  validates :rep_count, numericality: true
  belongs_to :instrumental
  belongs_to :user
  has_many :scores, dependent: :destroy
  has_many :playlist_compositions, dependent: :destroy
  belongs_to :memory_list
  has_many :scores, dependent: :destroy

  # getting all the flascards
  has_many :flashcards, through: :memory_list
end
