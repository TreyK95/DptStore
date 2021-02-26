class DptStore < ApplicationRecord
  has_many :items, dependent: :destroy
end
