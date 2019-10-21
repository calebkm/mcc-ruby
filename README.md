# Merchant Category Codes (MCC) for Ruby
The `mcc-ruby` gem provides a super simple interface for accessing [Merchant Category Codes](https://en.wikipedia.org/wiki/Merchant_category_code) in your Ruby app.

### Installation
Add the gem the standard Gemfile way:

```ruby
# Gemfile
gem 'mcc-ruby'
```

### Usage
Return the details for a single code using:

```ruby
MCC.code('5713')
=> #<MCC::Code:0x00007fbe0ca84568 @mcc="5713", @edited_description="Floor Covering Stores", @combined_description="Floor Covering Stores", @usda_description="Floor Covering Stores", @irs_description="Floor Covering Stores", @irs_reportable="No1.6041-3(c)">
```

Or return an array of results with an attribute:

```ruby
MCC.where(usda_description: 'Fast Food Restaurants')
=> [#<MCC::Code:0x00007fbe0c98cca0 @mcc="5814", @edited_description="Fast Food Restaurants", @combined_description="Fast Food Restaurants", @usda_description="Fast Food Restaurants", @irs_description="Fast Food Restaurants", @irs_reportable="No1.6041-3(c)">]
```

You can also access all codes using:

```ruby
MCC.all
=> [#<MCC::Code:0x00007fbe0c1d3f40 @mcc="0742", @edited_description="Veterinary Services", @combined_description="Veterinary Services", @usda_description="Veterinary Services", @irs_description="Veterinary Services", @irs_reportable="Yes">, #<MCC::Code:0x00007fbe0c1d3d10 @mcc="0763", ...]
```

### Acknowledgements
The Merchant Category Codes in this gem were sourced from the [mcc-codes repo](https://github.com/greggles/mcc-codes) by [greggles](https://github.com/greggles).

### License, etc

`mcc-ruby` is open and free for all. Please use, fork, update, critique, send pull requests, etc.