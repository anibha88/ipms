class Changeareatostring < ActiveRecord::Migration[5.1]
  def change
  	change_column :ipms, :area, :string
  end
end
