class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  validates :name, presence: true, uniqueness: true, allow_blank: false
  validates :name, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
  mount_uploader :photo, PhotoUploader
end
