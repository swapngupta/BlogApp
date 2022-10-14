class Article < ApplicationRecord
    has_many :comments, dependent: :destroy
  
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
    validates :phone, presence: true, length: { is: 10 }

     before_validation:set_title
     before_validation:set_body
  end
  
private
def set_title
  self.title = "Hello Bestpeers"
end
private
def set_body
  self.body = "this is bestpeers page"
end