class Party < ApplicationRecord
  validates :name, :embeded_link, presence: true
end
