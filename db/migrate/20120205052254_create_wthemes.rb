class CreateWthemes < ActiveRecord::Migration
  def change
    create_table :wthemes do |t|

      t.timestamps
    end
  end
end
