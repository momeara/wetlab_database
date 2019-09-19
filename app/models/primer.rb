require 'csv'

class Primer < ApplicationRecord
  
  def self.to_csv
    attributes = %w{name sequence}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |primer|
        csv << attributes.map{ |attr| primer.send(attr) }
      end
    end
  end
  
end
