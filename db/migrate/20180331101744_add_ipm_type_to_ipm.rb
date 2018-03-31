class AddIpmTypeToIpm < ActiveRecord::Migration[5.1]
  def change
    add_column :ipms, :ipm_type, :string
  end
end
