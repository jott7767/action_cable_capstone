class Message < ApplicationRecord
  belongs_to :room
  has_one :user, through: :room
  after_create_commit { BroadcastMessageJob.perform_later self }
end
