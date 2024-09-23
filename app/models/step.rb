class Step < ApplicationRecord
  belongs_to :component
  accepts_nested_attributes_for :component, reject_if: ->(attributes){ attributes['foot_position'].blank? }, allow_destroy: true

  attribute :role, :string, default: "Leader"
def description
  return self.foot + " " + self.foot_position
end

end
