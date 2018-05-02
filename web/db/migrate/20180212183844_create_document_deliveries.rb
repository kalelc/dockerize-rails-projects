class CreateDocumentDeliveries < ActiveRecord::Migration[5.1]
  def change
    create_table :document_deliveries do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
