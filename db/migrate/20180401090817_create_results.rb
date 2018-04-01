class CreateResults < ActiveRecord::Migration[5.1]
  def change
    create_table :results do |t|
      t.string :ipms
      t.string :comp
      t.string :area

      t.timestamps
    end
  end
end
