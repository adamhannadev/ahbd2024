class Lesson < ApplicationRecord
    belongs_to :student, class_name: 'Contact', foreign_key: 'student_id'
    beongs_to :teacher, class_name: 'Contact', foreign_key: 'teacher_id'
end
