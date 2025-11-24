class CreateContactSubmissions < ActiveRecord::Migration[8.1]
  def change
    create_table :contact_submissions do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.text :message, null: false
      t.string :site_url, null: false
      t.string :site_owner_email, null: false

      t.timestamps
    end

    add_index :contact_submissions, :site_url
    add_index :contact_submissions, :site_owner_email
    add_index :contact_submissions, :created_at
  end
end
