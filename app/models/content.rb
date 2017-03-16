class Content < ApplicationRecord
  belongs_to :article
  has_one :paragraph, optional: true
  has_one :image, optional: true
end
