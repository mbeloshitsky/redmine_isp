class CreateRispProjectServices < ActiveRecord::Migration
  def change
    create_table :risp_project_services do |t|
      t.integer :project_id
      t.integer :service_id

      t.timestamps
    end
  end
end
