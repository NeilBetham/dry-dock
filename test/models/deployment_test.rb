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
require 'test_helper'

class DeploymentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
