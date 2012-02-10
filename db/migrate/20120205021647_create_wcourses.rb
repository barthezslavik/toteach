class CreateWcourses < ActiveRecord::Migration
  def change
    create_table :wcourses do |t|

      t.timestamps
    end
  end
end
