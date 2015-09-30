class AddColorToSquares < ActiveRecord::Migration
  def change
    add_column :squares, :color, :string
  end
end
