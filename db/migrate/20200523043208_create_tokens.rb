class CreateTokens < ActiveRecord::Migration[6.0]
  def change
    create_table :tokens do |t|
      t.references :user, null: false, foreign_key: true
      t.text :key
      t.datetime :expires_at

      t.timestamps
    end
  end
end
