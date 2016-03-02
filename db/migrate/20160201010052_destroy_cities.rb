class DestroyCities < ActiveRecord::Migration
  def change
    drop_table :cities
    drop_table :countries
    drop_table :states
  end
end
