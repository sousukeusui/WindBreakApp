class HomeController < ApplicationController
    def index

    end

    def calculation
        kind = params[:kind]
        width = params[:width]
        mh = params[:mh]
        standard_w = params[:standard_w]
        standard_h = params[:standard_mh]
        
        if kind == "袖付き2枚引き"
            @two_door = Two_door.find
        elsif kind == "引き戸" 
 
        elsif kind == "ドア"

        end
    end
end
