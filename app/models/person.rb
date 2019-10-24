class Person < ApplicationRecord
    has_many :dogs
    has_many :interests_person
    has_many :interests, through: :interests_person
    has_many :teeths, as: :teethable
    enum hair_color: {black: 0, brown: 1, blonde: 2, red: 3}
end
