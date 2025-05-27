class CreateVinyls < ActiveRecord::Migration[8.0]
  def change
    create_table :vinyls do |t|
      t.string :band
      t.string :album
      t.string :genre
      t.integer :lp_qty
      t.integer :track_qty
      t.integer :release
      t.float :rate

      t.timestamps
    end
  end
end
