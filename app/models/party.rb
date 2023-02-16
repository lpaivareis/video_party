class Party < ApplicationRecord
  validates :title, :embeded_link, presence: true
end
