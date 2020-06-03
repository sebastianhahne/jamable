class UserInstrumentsController < ApplicationController
  def new
    @user_instrument = UserInstrument.new
  end

  def create
    @user_instrument = UserInstrument.new(user_instrument_params)
    @user_instrument.user = current_user
    @user_instrument.instrument = Instrument.find_by(id: params[:user_instrument][:name][:instrument_id])

    if @user_instrument.save
      redirect_to root_path, notice: 'Created new instrument.'
    else
      render :new
    end
  end

  private

  def user_instrument_params
    params.require(:user_instrument).permit(:skill_level, { user_instrument_attributes: [:name] })
  end
end
