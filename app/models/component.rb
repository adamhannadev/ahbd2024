class Component < ApplicationRecord
    has_many :steps
    accepts_nested_attributes_for :steps, allow_destroy: true
    validates :role, presence: true
end
