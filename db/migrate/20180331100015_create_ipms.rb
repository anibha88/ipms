class CreateIpms < ActiveRecord::Migration[5.1]
  def change
    create_table :ipms do |t|
      t.string :organisation
      t.string :city
      t.string :office
      t.string :building
      t.integer :floor
      t.string :building_type
      t.string :component

      t.timestamps
    end
  end
end
