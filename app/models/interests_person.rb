class InterestsPerson < ApplicationRecord
  belongs_to :person
  belongs_to :interest
end
