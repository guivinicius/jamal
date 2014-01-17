ActiveAdmin.register Place do
  permit_params :name, :abbr, :position, :parent_id

  sortable :tree => true, :collapsible => true

  filter :parent
  filter :name
  filter :abbr

  # Tree view
  # index :as => :sortable do
  #   label :abbr
  #   label :name

  #   actions
  # end

end
