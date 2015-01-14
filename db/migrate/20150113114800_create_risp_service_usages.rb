class CreateRispServiceUsages < ActiveRecord::Migration
  def change
    create_table :risp_service_usages do |t|
      t.integer :project_service_id
      t.datetime :created
      t.integer :usage

      t.timestamps
    end
  end
end
