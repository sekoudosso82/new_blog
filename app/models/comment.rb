class Comment < ApplicationRecord
  belongs_to :article

  validates :description, presence: true 
  validates :description, length: {minimum: 1}


end
