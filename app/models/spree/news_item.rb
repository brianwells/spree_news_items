module Spree
  class NewsItem < ActiveRecord::Base
  
    validates_presence_of :title, :category

    scope :enabled, lambda { |*categories|
      if categories.empty?
        where(:enabled => true)
      else
        where(:enabled => true).where(:category => categories)
      end
    }

    def initialize(*args)
      super(*args)
      last_item = NewsItem.last
      self.position = last_item ? last_item.position + 1 : 0
    end

    def self.categories_for_select
      unscoped.pluck(:category).uniq.sort
    end

  end
end
