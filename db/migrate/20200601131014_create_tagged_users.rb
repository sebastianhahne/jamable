class CreateTaggedUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :tagged_users do |t|

      t.timestamps
    end
  end
end
