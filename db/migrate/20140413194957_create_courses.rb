class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name, limit: 200, null: false
      t.string :handle, limit: 60, null: false, unique: true, index: true

      t.timestamps
    end
  end
end
