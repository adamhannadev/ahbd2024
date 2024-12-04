class Contact < ApplicationRecord
    scope :students, -> { where(role: 'Student') }
    scope :teachers, -> { where(role: 'Teacher') }
    scope :prospects, -> { where(role: 'Prospect') }

    validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create
    
    has_many :lessons_taught, class_name: 'Lesson', foreign_key: :teacher_id
    has_many :lessons_taken, class_name: 'Lesson', foreign_key: :student_id    
end
