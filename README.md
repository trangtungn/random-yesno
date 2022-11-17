# random-yesno
Randomly show yes or no gifs

# Installation

With `bundle`, add this line to Gemfile:

    gem "random_yesno"

Or install:

    $ gem install random_yesno

# Usage

```
RandomUsername.show
=> {"answer"=>"no", "forced"=>false, "image"=>"https://yesno.wtf/assets/no/6-4bf0a784c173f70a0cab96efd9ff80c9.gif"}
```

```
$ ruby -Ilib ./bin/yesno
=> {"answer"=>"no", "forced"=>false, "image"=>"https://yesno.wtf/assets/no/6-4bf0a784c173f70a0cab96efd9ff80c9.gif"}
```

# Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Include tests with your changes (run `rake` to test)
4. Commit your changes (`git commit -am 'Add some feature'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create new Pull Request

# Reference

1. JacobEvelyn: https://github.com/panorama-ed/gem-template
2. wycats: https://github.com/wycats/newgem-template
3. mdiebolt: https://github.com/polleverywhere/random_username