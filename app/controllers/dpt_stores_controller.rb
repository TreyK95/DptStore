class DptStoresController < ApplicationController
    def index
      @dpt_stores= DptStore.all 
        render component: "Dptstores", props: {dpt_stores: @dpt_stores}
    end

    def new
        render json: {dptstore: DptStore.all}
    end
end
