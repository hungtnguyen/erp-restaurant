module Erp
  module Restaurant
    module ApplicationHelper
      
      # page title helper
      def title(page_title)
        content_for :title, page_title.to_s
      end
      
      # about link
      def about_link(about)
        erp_restaurant.about_us_path(about.id, title: url_friendly(about.name))
      end
      
      # article link
      def article_link(article)
        erp_restaurant.blog_detail_path(article.id, title: url_friendly(article.name))
      end
      
      # user avatar
      def article_image(thumb, size)
        if size == 'large'
          thumb.present? ? thumb : url_for('/restaurant/images/blog/848_339.png')
        elsif size == 'medium'
          thumb.present? ? thumb : url_for('/restaurant/images/blog/360_252.png')
        elsif size == 'small'
          thumb.present? ? thumb : url_for('/restaurant/images/blog/80_80.png')
        end
      end
      
    end
  end
end
