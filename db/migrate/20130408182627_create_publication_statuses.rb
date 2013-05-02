class CreatePublicationStatuses < ActiveRecord::Migration
  def change
    create_table :publication_statuses do |t|
      t.string :name
      t.integer :client_id

      t.timestamps
    end
  end
end
