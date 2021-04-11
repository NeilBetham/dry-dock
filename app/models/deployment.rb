# == Schema Information
#
# Table name: deployments
#
#  id                  :integer          not null, primary key
#  name                :string
#  update_method       :string
#  update_window_start :datetime
#  update_window_stop  :datetime
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
class Deployment < ApplicationRecord
  has_many :devices
  has_many :images
end
