class SubsidiarySale < ActiveRecord::Base

  require 'csv'

  def self.process_upload(file)
    total_gross = 0
    if file.respond_to? :path
      CSV.foreach file.path, col_sep: "\t", headers: true do |row|
        total_gross += create_from_csv_row(row).total
      end
    end
    total_gross
  end

  def total
    item_price * purchase_count
  end

  private
  
  def self.create_from_csv_row(row)
    SubsidiarySale.create row.to_hash.transform_keys{ |key| key.parameterize.underscore.to_sym }
  end

end
