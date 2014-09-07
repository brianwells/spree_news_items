Deface::Override.new(:virtual_path => "spree/admin/shared/_menu",
                      :name => "news_items_admin_tab",
                      :insert_bottom => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
                      :text => "<%= tab(:news_items, :label => Spree.t(:news_items), :icon => 'rss') %>")
