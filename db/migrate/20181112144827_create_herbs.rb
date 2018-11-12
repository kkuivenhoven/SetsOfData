class CreateHerbs < ActiveRecord::Migration[5.0]
  def change
    create_table :herbs do |t|
      t.string :name
      t.float :TPC_M
      t.float :TPC_SD
      t.float :Flav_M
      t.float :Flav_SD
      t.float :FRAP_M
      t.float :FRAP_SD
      t.float :DPPH_M
      t.float :DPPH_SD

      t.timestamps
    end
  end
end
