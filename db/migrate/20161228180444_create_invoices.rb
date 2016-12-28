class CreateInvoices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices do |t|
      t.datetime :date
      t.string :customer
      t.decimal :tax
      t.string :vendor

      t.timestamps
    end
  end
end
