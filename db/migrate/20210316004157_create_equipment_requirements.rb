class CreateEquipmentRequirements < ActiveRecord::Migration[6.1]
  def change
    create_table :equipment_requirements do |t|
      t.references :program, null: false, foreign_key: true
      t.references :equipment, null: false, foreign_key: true

      t.timestamps
    end
    add_index :equipment_requirements, [:equipment_id, :program_id], unique: true
  end
end
