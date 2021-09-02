ActiveAdmin.register GeogUnit do
  permit_params  :label, :code
 # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :label, :code
  #
  # or
  #
  # permit_params do
  #   permitted = [:label, :code]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
