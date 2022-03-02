class Instructor < ApplicationRecord
    has_many :students, dependent: :destroy

    validates :name, presence: true
    validates :name, length: { minimum: 2 }
    validates :name, format: { with:  /\A[a-zA-Z]+\z/ }
end
