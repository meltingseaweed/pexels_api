class StaticpagesController < ApplicationController
def index
  if params[:get] != nil
    @collection_id = params[:get][:collection_id]
  end
end
end
