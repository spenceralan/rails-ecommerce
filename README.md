# README

E-commerce site. Uses `bcrypt` and `materialize`. There's a seed file. Set up your own admin. If you have questions, I'll be in Bali with no email. Ask someone else.

To set up:

* `rake db:setup`

Refactor List:
* Add ruby version to gemfile
* Update gems for development environment
* Validate order item quantity for whole positive numbers
* Add items to cart asynchronously
* Remove items from cart asychronously
* Update cart total asychronously
* Hide and show product description on click
* Show product description with asynchornous requests
* Integrate devise and flash messages for signing in and out
* Admin can add new products
* New products can have decimal amounts
* Admin can update and delete products
* Flash messages integrated for adding, updating, and deleting products