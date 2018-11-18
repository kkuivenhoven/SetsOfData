class AddSnNumToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :sn_num, :integer
  end
end
