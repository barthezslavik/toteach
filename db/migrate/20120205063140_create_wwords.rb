class CreateWwords < ActiveRecord::Migration
  def change
    create_table :wwords do |t|

      t.timestamps
    end
  end
end
