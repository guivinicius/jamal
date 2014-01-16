# == Schema Information
#
# Table name: places
#
#  id             :integer          not null, primary key
#  name           :string(255)      not null
#  abbr           :string(255)
#  position       :integer
#  parent_id      :integer
#  children_count :integer          default(0)
#  created_at     :datetime
#  updated_at     :datetime
#
# Indexes
#
#  index_places_on_parent_id  (parent_id)
#

class Place < ActiveRecord::Base
  include ActsAsTree

  acts_as_tree :order => "name", :counter_cache => true
end
