class StrainsController < ApplicationController

http_basic_authenticate_with name: "omearalab", password: "example", except: [:index, :show]

  def index
    @strains = Strain.all

    respond_to do |format|
      format.html
      format.csv { send_data @strains.to_csv, filename: "strains-#{Date.today}.csv" }
    end
  end

  def show
    @strain = Strain.find(params[:id])
  end

  def new
  end

  def edit
    @strain = Strain.find(params[:id])
  end

  def create
    @strain = Strain.new(strain_params)
    @strain.save
    redirect_to @strain
  end

  def update
    @strain = Strain.find(params[:id])

    if @strain.update(strain_params)
      redirect_to @strain
    else
      render 'edit'
    end
  end

  def destroy
    @strain = Strain.find(params[:id])
    @strain.destroy
    redirect_to strains_path
  end

  
  private
    def strain_params
      params.require(:strain).permit(
        :accession,
        :common_name,
        :strain_background,
        :general_info,
        :source,
        :keywords,
        :genotype,
        :phenotype,
        :ploidy,
        :reference,
        :sequence_validated,
        :method,
        :Mutant_source_DNA,
        :upstream_check_primers,
        :downstream_check_primers)
    end
end
