# Merchant Category Codes (MCC) for Ruby
The `mcc-ruby` gem provides a super simple interface for accessing [Merchant Category Codes](https://en.wikipedia.org/wiki/Merchant_category_code).

### Installation
Add the gem the standard Gemfile way:

```ruby
# Gemfile
gem 'mcc-ruby'
```

### Usage
You can find the details for a specific code directly using:

```ruby
Mcc.code('5713')
=> {"mcc"=>"5713", "edited_description"=>"Floor Covering Stores", "combined_description"=>"Floor Covering Stores", "usda_description"=>"Floor Covering Stores", "irs_description"=>"Floor Covering Stores", "irs_reportable"=>"No1.6041-3(c)", "id"=>792}
```

Or you can search by a specific attribute:

```ruby
Mcc.where(usda_description: 'Fast Food Restaurants')
=> {"mcc"=>"5814", "edited_description"=>"Fast Food Restaurants", "combined_description"=>"Fast Food Restaurants", "usda_description"=>"Fast Food Restaurants", "irs_description"=>"Fast Food Restaurants", "irs_reportable"=>"No1.6041-3(c)", "id"=>804}
```
Note that both `code` and `where` return a **single result**. Searching by an attribute that is non-unique will return the first result only.

You can also access all MCC's using:

```ruby
Mcc.all
=> [{"mcc"=>"0742", "edited_description"=>"Veterinary Services", "combined_description"=>"Veterinary Services", "usda_description"=>"Veterinary Services", "irs_description"=>"Veterinary Services", "irs_reportable"=>"Yes", "id"=>0}, {"mcc"=>"0763", ...]
```

### Acknowledgements
The Merchant Category Codes in this gem were sourced from the [mcc-codes repo](https://github.com/greggles/mcc-codes) by [greggles](https://github.com/greggles).

### License, etc

`mcc-ruby` is open and free for all. Please use, fork, update, critique, send pull requests, etc.