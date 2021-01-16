class Article < ApplicationRecord

    has_many :comments
    has_one_attached :image 

    validates :title, :body, presence: true 
    validates :title, length: {minimum: 10}
end
