class Book < ApplicationRecord
    validates :name, :author, :isbn, :price, :category, presence: true
    searchable do
        text :name, :author, :isbn
    end    
end
