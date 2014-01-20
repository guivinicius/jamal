ActiveAdmin.register Place do
  permit_params :name, :abbr, :position, :parent_id,
    :address_attributes => [:street, :number, :complement, :postalcode, :neighborhood, :city, :state, :place_id]

  menu :priority => 2

  sortable :tree => true, :collapsible => true

  filter :parent
  filter :name
  filter :abbr

  index do
    column :id
    column :abbr
    column :name
    column :parent

    actions
  end

  form do |f|

    f.inputs do
      f.input :parent
      f.input :name
      f.input :abbr
      f.input :position
    end

    f.inputs "Address", :for => [:address, f.object.address || Address.new] do |address_form|
      address_form.input :street
      address_form.input :number
      address_form.input :complement
      address_form.input :postalcode
      address_form.input :neighborhood
      address_form.input :city
      address_form.input :state
    end

    f.actions
  end

end
