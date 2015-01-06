class CreateRispServices < ActiveRecord::Migration
  def change
    create_table :risp_services do |t|
      t.string :name
      t.text :description
      t.string :measure_unit
    end
  end
end
