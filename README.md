Goshan KSS
===========

This is a living styleguides tools based on https://github.com/dewski/kss-rails
and http://nadarei.co/nkss-rails/


Installation
------------

Add this line to your application's Gemfile:
``` ruby
gem 'gkss-rails'
```

And then execute:

```
$ bundle install
```

Then, install the needed files into your project:

``` shell
$ bundle exec rails g gkss:install
```

Add assets path into `config/initializers/assets.rb`

```ruby
Rails.application.config.assets.precompile += %w( jquery-1.8.0.min.js prettify.js prettify.css styleguide.css )
```

Now move on to the next section.

### Customization

This gives you the following things that you should customize:

+ config/styleguides.yml
Config your kss with title, root, sections  
`title` means Application's title
`root` means which css file should be searched, default is `app/assets/stylesheets`
`include_js` means which manifest js file shoud be included in styleguide page,
defualt is `application`
`section` is sub pages which show your guides

+ app/views/styleguides/
Put your guide haml view here, make file name is id defined in `sections` of `config/styleguides.yml`

### Viewing your sheets

Now visit `http://localhost:3000/gkss`. It should work straight away. By
default, it's only enabled in development mode.

This works because you have a new route added to your app that mounts the Gkss
engine to that path:

```ruby
Rails.application.routes.draw do
  ...
  mount Gkss::Engine => '/gkss'  if Rails.env.development?
  ...
end
```


### Document your CSS

In your CSS file, add a KSS document block. In this example, we'll define
section `1.3`. Refer to the [KSS Syntax](http://warpspire.com/kss/syntax/) page 
for more info.

~~~ css
/*
 * Buttons (.button):
 * A button for doing things.
 *
 * Styleguide 1.3.
 */

.button {
  color: red
}
~~~

The format for the first line is `name (code):`, where `name` describes the 
section you want to document, and `code` describes the CSS selector of it.



Thanks!
----------------
[nkss-rails](http://nadarei.co/nkss-rails/)
[nkss-rails:git](https://github.com/nadarei/nkss-rails)
[kss-rails](https://github.com/dewski/kss-rails)
[kss](https://github.com/kneath/kss)


License
----------------
MIT License

Copyright 2017, Han Qiu(goshan), All rights reserved.

Permission is hereby granted, free of charge, to any person obtaining a copy 
of this software and associated documentation files (the "Software"), to deal 
in the Software without restriction, including without limitation the rights 
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell 
copies of the Software, and to permit persons to whom the Software is 
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in 
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN 
THE SOFTWARE.
