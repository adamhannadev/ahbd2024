class Step < ApplicationRecord
  has_and_belongs_to_many :components
end
