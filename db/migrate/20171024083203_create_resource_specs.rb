class CreateResourceSpecs < ActiveRecord::Migration
  def change
    create_table :resource_specs do |t|
      t.string :name, limit: 100, null: false
      t.boolean :limited, default: false, null: false
      t.boolean :is_active, null: false,  default: true
      t.boolean :is_deleted, null: false, default: false

      t.timestamps null: false
    end

    add_index :resource_specs, :name, unique: true
  end
end
