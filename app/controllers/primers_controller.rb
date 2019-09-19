class PrimersController < ApplicationController

http_basic_authenticate_with name: "omearalab", password: "example", except: [:index, :show]

  def index
    @primers = Primer.all

    respond_to do |format|
      format.html
      format.csv { send_data @primers.to_csv, filename: "primers-#{Date.today}.csv" }
    end
  end

  def show
    @primer = Primer.find(params[:id])
  end

  def new
  end

  def edit
    @primer = Primer.find(params[:id])
  end

  def create
    @primer = Primer.new(primer_params)
    @primer.save
    redirect_to @primer
  end

  def update
    @primer = Primer.find(params[:id])

    if @primer.update(primer_params)
      redirect_to @primer
    else
      render 'edit'
    end
  end

  def destroy
    @primer = Primer.find(params[:id])
    @primer.destroy
    redirect_to primers_path
  end

  
  private
    def primer_params
      params.require(:primer).permit(
        :name,
        :sequence)
    end
end
