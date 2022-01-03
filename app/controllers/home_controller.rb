class HomeController < ApplicationController
    def index

    end

    def calculation
        kind = params[:kind]
        width = params[:width]
        mh = params[:mh]
        
        if kind == "袖付き2枚引き"
            @two_door = Two_door.find_by(standard:params[:standard])
        elsif kind == "引き戸" 
            
        elsif kind == "ドア"

        end
    end
end
