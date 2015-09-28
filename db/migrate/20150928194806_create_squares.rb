class CreateSquares < ActiveRecord::Migration
  def change
    create_table :squares do |t|
      t.integer :length
      t.integer :width

      t.timestamps
    end
  end
end
