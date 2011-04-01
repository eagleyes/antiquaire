class Product < ActiveRecord::Base
      #translate :title, :text 
      attr_accessor :description , :category , :country , :material, :style  
      #attr_accessor :purchase_date , :qty_in_stock , :qty_in_stock_adj, :height, :width , :length , photo
      #

      #validates :name,	:presence => true ,
      #			:length => { :maximum => 100 }
	
      validates :description, :presence => true		 

      def name
	puts I18n.locale.class
	if I18n.locale.to_s == "fr-CA" 
	puts "francais"
	  return name_fr
	else
	puts "anglais"
	  return name_en
	end

      end	 



end
