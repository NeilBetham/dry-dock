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
require 'test_helper'

class DeviceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
