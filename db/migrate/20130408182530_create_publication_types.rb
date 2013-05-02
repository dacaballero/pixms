class CreatePublicationTypes < ActiveRecord::Migration
  def change
    create_table :publication_types do |t|
		t.string :name
		t.integer :client_id

      t.timestamps
    end
  end
end
