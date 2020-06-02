class CreateTaggedUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :tagged_users do |t|
      t.references :post, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
