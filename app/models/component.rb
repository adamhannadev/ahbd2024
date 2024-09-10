class Component < ApplicationRecord
    has_and_belongs_to_many :steps
    accepts_nested_attributes_for :steps, allow_destroy: true

end
