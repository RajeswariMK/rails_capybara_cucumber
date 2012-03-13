class CreateAccounts < ActiveRecord::Migration
  def self.up
    create_table :accounts do |t|
      t.string :user
      t.boolean :acc_type
      t.string :area

      t.timestamps
    end
  end

  def self.down
    drop_table :accounts
  end
end
