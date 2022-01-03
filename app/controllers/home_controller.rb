class HomeController < ApplicationController
    def index
        if request.post?
            kind = params[:kind]
            width = params[:width]
            mh = params[:mh]
            
            if kind == "袖付き2枚引き"
                two_door = TwoDoor.find_by(standard:params[:standard])
                w_difference = two_door.standard_w - width.to_i
                w_difference = w_difference/3
                mh_difference = two_door.standard_h - mh.to_i
                @gw = two_door.g_width - w_difference
                @gh = two_door.g_height - mh_difference
            elsif kind == "引き戸" 
                sliding_door = SlidingDoor.find_by(standard:params[:standard])
                w_difference = sliding_door.standard_w - width.to_i
                w_difference = w_difference/2
                mh_difference = sliding_door.standard_h - mh.to_i
                @gw = sliding_door.g_width - w_difference
                @gh = sliding_door.g_height - mh_difference
            elsif kind == "ドア"
                door = Door.find_by(standard:params[:standard])
                w_difference = door.standard_w - width.to_i
                mh_difference = door.standard_h - mh.to_i
                @gw = door.g_width - w_difference
                @gh = door.g_height - mh_difference
            end
        end
    end
end
