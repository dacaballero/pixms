class CreatePublicationComments < ActiveRecord::Migration
  def change
    create_table :publication_comments do |t|
      t.integer :comment_id
      t.integer :publication_id

      t.timestamps
    end
  end
end
