class GuestsController < ApplicationController
    def create
        @guest = Guest.create(guest_params)
        session[:guest_user_id] = @guest.id
        redirect_to room_path(1)
    end

  private

    def guest_params
        params.require(:guest).permit(:username)
    end

end
