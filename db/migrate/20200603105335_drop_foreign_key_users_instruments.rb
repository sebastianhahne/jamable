class DropForeignKeyUsersInstruments < ActiveRecord::Migration[6.0]
  def change
    remove_reference :users, :instrument, index: true
  end
end
