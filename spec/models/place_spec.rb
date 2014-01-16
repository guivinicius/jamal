# == Schema Information
#
# Table name: places
#
#  id           :integer          not null, primary key
#  name         :string(255)      not null
#  abbr         :string(255)
#  position     :integer
#  parent_id    :integer
#  places_count :integer          default(0)
#  created_at   :datetime
#  updated_at   :datetime
#
# Indexes
#
#  index_places_on_parent_id  (parent_id)
#

require 'spec_helper'

describe Place do

  let(:parent_place) { create(:place) }
  let(:child_place) { create(:place, :parent_id => parent_place.id) }

  it "behaves like a tree structure" do
    expect(parent_place.children).to eq([child_place])
  end

end
