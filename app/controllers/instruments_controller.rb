class InstrumentsController < ApplicationController

  def index
    @instruments = Instrument.all
  end

  def show
    @instrument = Instrument.find(params[:id])
  end

  def new
    @instrument = Instrument.new
  end

  def create
    @instrument = Instrument.find(params[:instrument_id])
    @instrument.user = current_user
    @instrument.save
  end

  def update
    set_instruments
    @instrument.update(instrument_params)
    @instrument.save
  end

  def destroy
    set_instruments
    @instrument = Instrument.find(params[:id])
    @instrument.destroy
  end

  private

  def set_instruments
    @instrument = Instrument.find(params[:id])
  end

  def instrument_params
    params.require(:instrument).permit(:name, :skill_level)
  end

end
