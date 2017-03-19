class Content < ApplicationRecord
  belongs_to :article
  has_one :paragraph, required: false
  has_one :image, required: false
end
