class Product < ActiveRecord::Base
      translates :name, :description 
      attr_accessor :category , :country , :material, :style  
      #attr_accessor :purchase_date , :qty_in_stock , :qty_in_stock_adj, :height, :width , :length , photo
      #

      #validates :name,	:presence => true ,
      #			:length => { :maximum => 100 }
	
      #validates :description, :presence => true		 

end
