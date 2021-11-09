class Product < ApplicationRecord
  belongs_to :manufacturer

  acts_as_ordered_taggable
end
