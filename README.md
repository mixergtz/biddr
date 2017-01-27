# Biddr

Medellin.rb meetup talk

Super simple example app to showcase how easy is to setup ActionCable and benefit from it

The app allows to create products and place bids for them and notify those bids to certain views in real time using ActionCable

## How to use it

1. Clone this repo
2. Move to folder
3. Run `rails server`
4. Go to `/products` and create a new one
5. Click on `See bids` on newly created product
6. Create new bid
7. See how tables on `/products` and `products/<product_id>/bids` are updated on real time


## Useful Links:

- http://edgeguides.rubyonrails.org/action_cable_overview.html
- https://www.sitepoint.com/action-cable-and-websockets-an-in-depth-tutorial/
- https://blog.heroku.com/real_time_rails_implementing_websockets_in_rails_5_with_action_cable
