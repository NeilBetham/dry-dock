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
class LogChunk < ApplicationRecord
  belongs_to :device
end
