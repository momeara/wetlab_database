class PlasmidsController < ApplicationController

http_basic_authenticate_with name: "omearalab", password: "example", except: [:index, :show]

  def index
    @plasmids = Plasmid.all
    
    respond_to do |format|
      format.html
      format.csv { send_data @plasmids.to_csv, filename: "plasmids-#{Date.today}.csv" }
    end
  end

  def show
    @plasmid = Plasmid.find(params[:id])
  end

  def new
  end

  def edit
    @plasmid = Plasmid.find(params[:id])
  end

  def create
    @plasmid = Plasmid.new(plasmid_params)
    @plasmid.save
    redirect_to @plasmid
  end

  def update
    @plasmid = Plasmid.find(params[:id])

    if @plasmid.update(plasmid_params)
      redirect_to @plasmid
    else
      render 'edit'
    end
  end

  def destroy
    @plasmid = Plasmid.find(params[:id])
    @plasmid.destroy
    redirect_to plasmids_path
  end

  
  private
    def plasmid_params
      params.require(:plasmid).permit(
        :name,
        :source,
        :method,
        :sequence_validated,
        :reference)
    end
end
