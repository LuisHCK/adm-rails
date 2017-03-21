class Provider < ApplicationRecord
    has_many :products
    validates :name, presence: :true
    validates :phone, presence: :true
    validates :address, presence: :true
end
