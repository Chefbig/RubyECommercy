class ProvincesController < InheritedResources::Base

  private

    def province_params
      params.require(:province).permit(:name, :gst, :pst, :hst, :qst)
    end
end

