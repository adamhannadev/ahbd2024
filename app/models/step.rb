class Step < ApplicationRecord
  has_and_belongs_to_many :components
  accepts_nested_attributes_for :components, reject_if: ->(attributes){ attributes['foot_position'].blank? }, allow_destroy: true

def description
  return self.foot + " " + self.foot_position
end

end
