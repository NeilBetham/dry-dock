class CreateLogChunks < ActiveRecord::Migration[6.0]
  def change
    create_table :log_chunks do |t|
      t.text :message
      t.references :device, null: false, foreign_key: true

      t.timestamps
    end
  end
end
