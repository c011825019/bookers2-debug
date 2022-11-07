class Category < ApplicationRecord
  has_many :book_categorys, dependent: :destroy
  has_many :books, through: :book_categorys
end
