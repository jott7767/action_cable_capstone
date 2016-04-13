class Message < ApplicationRecord
  belongs_to :room
  has_one :user, through: :room
end
