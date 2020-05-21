class Deployment < ApplicationRecord
  has_many :devices
  has_many :images
end
