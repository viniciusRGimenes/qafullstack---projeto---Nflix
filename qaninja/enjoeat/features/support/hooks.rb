Before do
    page.current_window.resize_to(1440, 900)
end
Before('@Tasty_Treats') do
    visit 'restaurants/tasty-treats/menu'
end