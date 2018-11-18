class AddSnTotalToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :sn_total, :string
  end
end
