# == Schema Information
#
# Table name: images
#
#  id            :integer          not null, primary key
#  version_tag   :string
#  hash          :text
#  deployment_id :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Image < ApplicationRecord
  belongs_to :deployment
end
