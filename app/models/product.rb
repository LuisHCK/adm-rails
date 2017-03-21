class Product < ApplicationRecord
    belongs_to :provider
    belongs_to :category
    has_one :product

    validates :name, presence: :true
    validates :purchase_price, presence: :true
    validates :sale_price, presence: :true
    
    has_attached_file :picture, styles: { thumb: ["64x64#", :jpg],
						original: ['400', :jpg] },
	convert_options: { thumb: "-quality 85 -strip",
										 original: "-quality 90 -strip" }, dependent: :destroy

	validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/ , presence: true

end
