# == Schema Information
#
# Table name: addresses
#
#  id           :integer          not null, primary key
#  street       :string(255)
#  number       :string(255)
#  complement   :string(255)
#  postalcode   :string(255)
#  neighborhood :string(255)
#  city         :string(255)
#  state        :string(255)
#  place_id     :integer
#  created_at   :datetime
#  updated_at   :datetime
#
# Indexes
#
#  index_addresses_on_place_id  (place_id)
#

require 'spec_helper'

describe Address do
end
