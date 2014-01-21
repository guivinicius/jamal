# == Schema Information
#
# Table name: phones
#
#  id               :integer          not null, primary key
#  number           :string(255)
#  branch           :string(255)
#  place_id         :integer
#  responsible_name :string(255)
#  private          :boolean          default(TRUE)
#  created_at       :datetime
#  updated_at       :datetime
#
# Indexes
#
#  index_phones_on_place_id  (place_id)
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :phone do
    number "MyString"
    branch 1
    place_id 1
    subject_name "MyString"
  end
end
