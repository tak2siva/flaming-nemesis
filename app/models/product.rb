class Product < ActiveRecord::Base
  attr_accessible :description, :name, :price

  def has_price?
	  !price.blank?	  
  end
  def has_name?
	  !name.blank?	  
  end
  def has_description?
	  !description.blank?	  
  end
end
