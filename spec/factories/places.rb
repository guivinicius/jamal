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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :place do
    name "Departamento de TI"
    abbr "DTI"
    position 1
  end
end
