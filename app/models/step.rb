class Step < ApplicationRecord
  belongs_to :footwork, optional: true
  belongs_to :foot_position, optional: true

  has_and_belongs_to_many :components
end
