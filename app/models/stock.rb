class Stock < ApplicationRecord
    belongs_to :product
    
    validates :lot, uniqueness: true

    def stock_name
        return self.product.name
    end

    def stock_price
        return self.product.sale_price
    end
end
