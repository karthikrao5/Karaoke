class RoomsController < ApplicationController

    before_filter :authenticate_user!
    def create
    end

    def new
        @room = current_user.rooms.build()
        if @room.save
            redirect_to room_path(@room)
        end
    end


    def destroy
    end

    def show
    end

    # private
    #
    #     def room_params
    #         params.require(:room).permit(:title, :category)
    #     end

end
