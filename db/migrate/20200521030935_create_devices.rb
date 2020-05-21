class CreateDevices < ActiveRecord::Migration[6.0]
  def change
    create_table :devices do |t|
      t.string :name
      t.string :location
      t.references :deployment, null: false, foreign_key: true
      t.datetime :last_checkin
      t.boolean :enable_updates
      t.text :public_key
      t.boolean :adopted

      t.timestamps
    end
  end
end
