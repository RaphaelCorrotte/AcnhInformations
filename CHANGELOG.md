## [0.1.0] - 2021-06-08

- Initial release

## [0.1.1] - 2021-06-10

- Add `valid?`, `scrape` and `get_by_name`. See examples : 
### Api#valid?
```ruby
puts "It's valid!" if AcnhInformations::Api.valid?(:fish, 1)
# => It's valid!
```

### Api#scrape
```ruby
bitterling = AcnhInformations::Api.scrape(:fish, 1)
puts "Catchprase : #{bitterling[:"catch-phrase"]}"
# => I caught a bitterling! It's mad at me, but only a little.
```

### Api#get_by_name
```ruby
bitterling = AcnhInformations::Api.get_by_name(:fish, "bouv")
puts "Icon URL : #{bitterling[:image_uri]}"
# => https:// acnhapi.com/v1/images/fish/1
```
  