# == Schema Information
#
# Table name: devices
#
#  id             :integer          not null, primary key
#  name           :string
#  location       :string
#  deployment_id  :integer          not null
#  last_checkin   :datetime
#  enable_updates :boolean
#  public_key     :text
#  adopted        :boolean
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Device < ApplicationRecord
  has_many :log_chunks
  belongs_to :deployment
end
