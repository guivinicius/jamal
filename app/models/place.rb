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

class Place < ActiveRecord::Base
  include ActsAsTree

  acts_as_tree(:order => "position, name", :counter_cache => true)

  validates :name,
    :presence => true

  has_one :address,
    :dependent => :delete

  has_many :phones,
    :dependent => :delete_all

  accepts_nested_attributes_for :address, :phones,
    :allow_destroy => true

end
