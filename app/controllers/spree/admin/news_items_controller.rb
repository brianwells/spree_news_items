module Spree
  module Admin
    class NewsItemsController < ResourceController
      
      def index
        respond_with(@collection)
      end
      
      def show
        redirect_to( :action => :edit )
      end
      
      protected

      def find_resource
        Spree::NewsItem.find(params[:id])
      end
      
      def location_after_save
         edit_admin_news_item_url(@news_item)
      end
      
      def collection
        return @collection if @collection.present?
        params[:q] ||= {}
        params[:q][:s] ||= ["category asc", "position asc"]
        
        @search = super.ransack(params[:q])
        @collection = @search.result.page(params[:page]).per(Spree::Config[:admin_products_per_page])
      end
      
      private
      
      def permitted_resource_params
        params.require(object_name).permit(:title, :content, :category, :position, :url, :enabled)
      end

    end
  end
end
