class DptStoresController < ApplicationController
    def index
      @dpt_stores= DptStore.all 
        render component: "DptStores", props: {dpt_stores:@dpt_stores}
    end

    def show 
        @dpt_store = DptStore.find(params[:id])
        @items = @dpt_store.items
        render component: "DptStore", props: {dpt_store: @dpt_store, items: @items}
    end 

    def new
        render json: {dpt_stores: DptStore.all}
    end
end
