class DropCovidtests < ActiveRecord::Migration[6.0]
  def change
    drop_table :covidtests
  end
end
