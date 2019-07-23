class CreateMains < ActiveRecord::Migration[5.2]
  def change
    create_table :mains do |t|
      t.text :content
    end
  end
end
