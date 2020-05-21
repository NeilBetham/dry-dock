class Device < ApplicationRecord
  has_many :log_chunks
  belongs_to :deployment
end
