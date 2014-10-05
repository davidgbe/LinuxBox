class CreateInstances < ActiveRecord::Migration
  def change
    create_table :instances do |t|
      t.references :application, index: true
      t.string :ip
      t.string :port
      t.string :username
      t.string :password
      t.boolean :available

      t.timestamps
    end
  end
end
