class GuestsController < ApplicationController
    def create
        @guest = Guest.create()
        current_user = @guest
        redirect_to room_path(1)
    end

end
