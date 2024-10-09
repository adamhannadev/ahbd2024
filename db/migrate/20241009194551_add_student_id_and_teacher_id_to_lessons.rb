class AddStudentIdAndTeacherIdToLessons < ActiveRecord::Migration[7.1]
  def change
    add_column :lessons, :student_id, :integer
    add_column :lessons, :teacher_id, :integer
  end
end
