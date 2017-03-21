class Stock < ApplicationRecord
    belongs_to :product

    def stock_name
        return self.product.name
    end
end
