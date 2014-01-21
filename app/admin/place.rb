ActiveAdmin.register Place do
  permit_params :name, :abbr, :position, :parent_id,
    :address_attributes => [:street, :number, :complement, :postalcode, :neighborhood, :city, :state, :place_id, :id, :_destroy],
    :phones_attributes => [:responsible_name, :branch, :number, :place_id, :id, :_destroy]

  menu :priority => 2

  sortable :tree => true, :collapsible => true

  filter :parent
  filter :name
  filter :abbr

  index do
    selectable_column

    column :id
    column :abbr
    column :name
    column :parent

    actions
  end

  show do |place|
    attributes_table do
      row :id
      row :abbr
      row :name
      row :parent_tree do
        place.ancestors.reverse.map(&:name).join(" / ")
      end

      row :phones do
        ul do
          place.phones.each do |p|
            li "(#{p.branch}) #{p.number} - #{p.responsible_name}"
          end
        end
      end

      row :address do
        simple_format(place.address.to_s)
      end

      row :created_at
      row :updated_at

    end
    active_admin_comments
  end

  form do |f|

    f.inputs do
      f.input :parent
      f.input :name
      f.input :abbr
      f.input :position
    end

    f.has_many :phones, :allow_destroy => true, :heading => "Phones" do |phone_form|
      phone_form.input :private
      phone_form.input :responsible_name
      phone_form.input :branch
      phone_form.input :number
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
