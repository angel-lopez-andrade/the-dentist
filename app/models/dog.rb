class Dog < ApplicationRecord
  belongs_to :person
  has_many :teeths, as: :teethable
end
