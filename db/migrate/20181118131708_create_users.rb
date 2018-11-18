class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :ip_addr

      t.timestamps
    end
  end
end
