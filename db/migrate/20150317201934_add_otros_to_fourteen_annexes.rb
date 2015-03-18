class AddOtrosToFourteenAnnexes < ActiveRecord::Migration
  def change
    add_column :fourteen_annexes, :otros, :integer
  end
end
