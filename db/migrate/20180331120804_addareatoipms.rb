class Addareatoipms < ActiveRecord::Migration[5.1]
  def change
  	add_column :ipms, :area, :decimal
  end
end
