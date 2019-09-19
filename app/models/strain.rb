require 'csv'

class Strain < ApplicationRecord

  def self.to_csv
    attributes = %w{accession common_name keywords strain_background source method Mutant_source_DNA upstream_check_primers downstream_check_primers reference sequence_validated general_info genotype ploidy phenotype}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |strain|
        csv << attributes.map{ |attr| strain.send(attr) }
      end
    end
  end

end
