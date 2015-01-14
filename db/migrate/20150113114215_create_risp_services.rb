class CreateRispServices < ActiveRecord::Migration
  def change
    create_table :risp_services do |t|
      t.string :name
      t.text :description
      t.string :munit

      t.timestamps
    end
  end
end
