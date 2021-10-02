ActiveAdmin.register Product do
  permit_params :name, :image, :description, :favourite, :category, :price

end
