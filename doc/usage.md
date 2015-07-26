# Using Skyfire


## Generating package.json
```sh
  rails g skyfire:install
```


###Rails configuration
Disable the asset pipeline add the following snippet to application.rb.
```ruby
    config.assets.enabled = false
```    

```ruby
module ApplicationHelper
    included do
      include Skyfire::AssetsHelper
    end
end
```

###Building assets
Source location: /app/assets

```sh
gulp build
```
