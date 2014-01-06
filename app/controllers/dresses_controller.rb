class DressesController < ApplicationController
    def list
      @collection = Dress.all
    end

    # /dresses?id=1 & size=M
    # params = {"id" => 1, "size" => "M" }
    def display
        var = params[:id]

        @dress = Dress.find(var)
    end

    def like
        dress = Dress.find(params[:id])
        dress.increment(:likes)
        # OR do the following
        # dress.likes = dress.likes + 1
        dress.save

        redirect_to action: "display", id: dress
    end
end
