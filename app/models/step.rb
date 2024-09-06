class Step < ApplicationRecord
  has_and_belongs_to_many :components

def description
  return self.foot + " " + self.foot_position
end

end
