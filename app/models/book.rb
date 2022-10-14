class Book < ApplicationRecord
    validates :books_name, presence: true
    validates :authore_name, presence: true
end
