class SubsidiarySale < ActiveRecord::Base

  require 'csv'

  def self.process_upload(file)
    if file.respond_to? :path
      CSV.foreach file.path, col_sep: "\t", headers: true do |row|
        create_from_csv_row row
      end
    end
  end

  private
  
  def self.create_from_csv_row(row)
    SubsidiarySale.create row.to_hash.transform_keys{ |key| key.parameterize.underscore.to_sym }
  end

end
