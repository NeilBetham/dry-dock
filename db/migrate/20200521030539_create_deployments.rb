class CreateDeployments < ActiveRecord::Migration[6.0]
  def change
    create_table :deployments do |t|
      t.string :name
      t.string :update_method
      t.datetime :update_window_start
      t.datetime :update_window_stop

      t.timestamps
    end
  end
end
