class Step < ApplicationRecord
  belongs_to :footwork
  belongs_to :foot_position

  has_and_belongs_to_many :components
end
