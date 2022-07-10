class CreateUrlmaps < ActiveRecord::Migration[7.0]
  def change
    create_table :urlmaps do |t|
      t.string :shortUrl
      t.text :longUrl
      t.timestamps
    end
  end
end
