class AddJurisdictionIdToFourteenAnnex < ActiveRecord::Migration
  def change
    add_column :fourteen_annexes, :jurisdiction_id, :integer
  end
end
