# == Schema Information
#
# Table name: log_chunks
#
#  id         :integer          not null, primary key
#  message    :text
#  device_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'test_helper'

class LogChunkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
