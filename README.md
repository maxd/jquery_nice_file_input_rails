# jquery_nice_file_input_rails

jQuery-Nice-File-Input asset bundle for Rails >= 3.2.x

## Features

* Rails 3.2.x/4.0.x support
* Clean and predictable update process (see scripts/update_jquery_nice_file_input.sh)

## Installation

Add this line to your application's Gemfile:

    gem 'jquery_nice_file_input_rails', '~> x.x.x' # where x.x.x latest gem version

## Usage

### Integration to Rails Asset Pipeline

Add single line to 'application.css':

```
/*
 * require jquery.nice-file-input
 */
```

Then add single line to 'application.js':

```
//= require jquery.nice-file-input
```

That's all. Now you can use jQuery-Nice-File-Input inside your application.

> If you want to use minified JS & CSS versions of jQuery-Nice-File-Input then just replace `jquery.nice-file-input` to `jquery.nice-file-input.min` in code snippets provided above.

### In-place integration

If you want to use jQuery-Nice-File-Input in specified views only you can include its use the following commands:

```
<%= stylesheet_link_tag 'jquery.nice-file-input' %>
<%= javascript_include_tag 'jquery.nice-file-input' %>
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
