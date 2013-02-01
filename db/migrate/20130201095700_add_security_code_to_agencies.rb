class AddSecurityCodeToAgencies < ActiveRecord::Migration
  def change
    add_column :agencies, :security_code, :string
  end
end
