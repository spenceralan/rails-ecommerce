# Rails Ecommerce Store

This ecommerce website was in shambles before I got to it! Bugs galore! I cleaned up the site security by adding and integrating devise. I removed bugs that would potentially allow users to buy negative items! What does that even mean?! If this project doesn't save the world it will save a clients day!

### Prerequisites

Web browser with ES6 compatibility
Examples: Chrome, Safari

Ruby 2.4.1
Bundler

### Installing

Installation is quick and easy! You can clone this repository to your machine and host it locally! 

Once it is cloned, navigate to the root of the project and run:

```shell
bundle
```

When that finishes, set up the database with the command:

```shell
bundle exec rake db:setup
```

NOTE: Due to the random seed data this step may fail validations. In the unlinkely event it fails, run the above command again.

When the database is successfully setup it is time to run the app!

```shell
bundle exec rails server
```

The default host path is http://localhost:3000


NOTE: There are two basic accounts that come along with the test database.

#### User
* username: testuser
* password: 123456

#### Admin
* username: admin
* password: admin123456

### Refactored Code
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
* Add validations to models
* Add images to products
* Display images with products
* Admin can add / update product images

## Built With

* Ruby
* Rails
* HTML
* CSS
* Jquery

## Authors

* Spencer Alan

## License

MIT License

Copyright (c) 2017 Spencer Alan

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.