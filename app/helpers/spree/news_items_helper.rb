module Spree
  module NewsItemsHelper

    def insert_news_items(params={})
      params[:category] ||= "home"
      params[:class] ||= "news_item"
      
      news_items = Spree::NewsItem.enabled(params[:category]).order(:position).offset(params[:offset]).limit(params[:limit])
      return '' if news_items.empty?
      
      news_items.map do |item|
        content_tag :div, :class => params[:class] do
          title = content_tag :h1 do
            item.url.blank? ? item.title : link_to(item.title, item.url)
          end
          content = item.content.blank? ? nil : content_tag(:h3, item.content)
          [title,content].flatten.compact.join.html_safe
        end
      end.join.html_safe
    end
    
  end
end
