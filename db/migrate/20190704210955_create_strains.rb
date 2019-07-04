class CreateStrains < ActiveRecord::Migration[5.2]
  def change
    create_table :strains do |t|
      t.string :accession
      t.text :common_name
      t.text :strain_background
      t.text :general_info
      t.text :source
      t.text :keywords
      t.text :genotype
      t.text :phenotype
      t.text :ploidy
      t.text :reference
      t.text :sequence_validated
      t.text :method
      t.text :Mutant_source_DNA
      t.text :upstream_check_primers
      t.text :downstream_check_primers

      t.timestamps
    end
  end
end
