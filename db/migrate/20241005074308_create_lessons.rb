class CreateLessons < ActiveRecord::Migration[7.1]
  def change
    create_table :lessons do |t|
      t.datetime :lesson_time
      t.text :plan
      t.string :status, :default => "booked"

      t.timestamps
    end
  end
end
