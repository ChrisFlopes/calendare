class Group < ApplicationRecord
  has_many :participants
  has_many :users, through: :participants

  has_many :events
end
