class CreateTokens < ActiveRecord::Migration[7.1]
  def change
    create_table :tokens do |t|
      t.string :name, null: false

      t.timestamps
    end

    add_index :tokens, :name, unique: true
  end
end
