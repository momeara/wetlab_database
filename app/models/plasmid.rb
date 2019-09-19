require 'csv'

class Plasmid < ApplicationRecord


  def self.to_csv
    attributes = %w{name source method sequence_validated reference}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |plasmid|
        csv << attributes.map{ |attr| plasmid.send(attr) }
      end
    end
  end

end
