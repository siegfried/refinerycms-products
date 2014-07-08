module Refinery
  module Products
    module Admin
      class ProductsController < ::Refinery::AdminController

        crudify :'refinery/products/product',
                :title_attribute => 'name',
                :xhr_paging => true

        def product_params
          params.require(:product).permit(:name, :description, :photo_id)
        end
      end
    end
  end
end
