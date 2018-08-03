class Book < ApplicationRecord
    validates :name, :author, :isbn, :price, :category, presence: true
end
