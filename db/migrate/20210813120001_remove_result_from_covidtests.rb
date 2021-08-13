class RemoveResultFromCovidtests < ActiveRecord::Migration[6.0]
  def change
    remove_column :covidtests, :result, :string
  end
end
