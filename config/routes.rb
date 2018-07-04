Erp::Restaurant::Engine.routes.draw do
  root to: "frontend/home#index"
  get "gioi-thieu.html" => "frontend/information#about_us", as: :about_us
  get "lien-he.html" => "frontend/information#contact_us", as: :contact_us
  get "tin-tuc.html" => "frontend/blog#index", as: :blog
  get "tin-tuc/chi-tiet.html" => "frontend/blog#blog_detail", as: :blog_detail
  get "dat-ban.html" => "frontend/reservation#index", as: :reservation
  get "thuc-don.html" => "frontend/food_menu#index", as: :food_menu
  get "hinh-anh.html" => "frontend/gallery#index", as: :gallery
  get "hinh-anh/chi-tiet.html" => "frontend/gallery#gallery_detail", as: :gallery_detail
  #get "thuc-don/chi-tiet.html" => "frontend/food_menu#food_detail", as: :food_detail
end