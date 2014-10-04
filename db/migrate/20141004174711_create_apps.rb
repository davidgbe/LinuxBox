class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.references :user, index: true
      t.string :name
      t.string :key
      t.string :secret

      t.timestamps
    end
  end
end
