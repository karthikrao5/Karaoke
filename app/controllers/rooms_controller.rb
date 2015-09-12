class RoomsController < ApplicationController

    def create
    end

    def new
        @room = current_user.rooms.build()
        @message = Message.new
        @messages = Message.order('created_at DESC')
        if @room.save
            redirect_to room_path(@room)
        end
    end


    def destroy
    end

    def show
    end

    def guest
      session[:username] = User.find_by_username(params[:username]) if params[:username]
    end

    # private
    #
    #     def room_params
    #         params.require(:room).permit(:title, :category)
    #     end

end
