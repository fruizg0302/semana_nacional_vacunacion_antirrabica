class AddImssProsperaStatusToState < ActiveRecord::Migration
  def change
    add_column :states, :imss_prospera, :integer
  end
end
