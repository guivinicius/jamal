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

class Address < ActiveRecord::Base

  belongs_to :place

  def to_s
    return "" if self.street.empty?
    <<-eos
      #{self.street}, #{self.number} - #{self.city}, #{self.state}
      #{self.neighborhood}
      #{self.complement}
      #{self.postalcode}
    eos
  end
end
