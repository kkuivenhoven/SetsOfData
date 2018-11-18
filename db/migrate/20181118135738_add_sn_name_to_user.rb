class AddSnNameToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :sn_name, :string
  end
end
