Before do
    page.current_window.resize_to(1440, 900)

    @rest_list_page = RestaurantListPage.new
    @rest_page = RestaurantPage.new
    @order_page = OrderPage.new
end
Before('@Tasty_Treats') do
    visit 'restaurants/tasty-treats/menu'
end

Before('@green_food') do
    visit "restaurants/green-food/menu"
end