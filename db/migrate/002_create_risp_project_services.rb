class CreateRispProjectServices < ActiveRecord::Migration
  def change
    create_table :risp_project_services do |t|
      t.integer :service_id
      t.integer :project_id
    end
  end
end
