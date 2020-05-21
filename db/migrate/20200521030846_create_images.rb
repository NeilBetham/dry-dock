class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :version_tag
      t.text :hash
      t.references :deployment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
