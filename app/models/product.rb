class Product < ApplicationRecord
  belongs_to :user
  belongs_to :category, dependent: :destroy
  belongs_to :brand, dependent: :destroy
  belongs_to :shipping, dependent: :destroy
  has_many   :images, dependent: :destroy
end
