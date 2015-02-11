OmniAuth Planning de garde
================

This is an [OmniAuth 1.0](https://github.com/intridea/omniauth) strategy for authenticating to [Planning de garde](https://www.planning-de-garde.fr/).

Usage
-----

In the Gemfile:

```ruby
gem 'omniauth-planningdegarde'
```

In a Rails application, put this in `config/initializers/devise.rb`:

```ruby
config.omniauth :planningdegarde, ENV['PLANNING_DE_GARDE_APP_ID'], ENV['PLANNING_DE_GARDE_APP_SECRET']
```

and follow Devise's [OmniAuth tutorial](https://github.com/plataformatec/devise/wiki/OmniAuth%3A-Overview) if it's your first OmniAuth's implementation.

Restart your server and visit */auth/planningdegarde* and voila !


Authors
-------

* [Etienne Depaulis (@EtienneDepaulis)](https://github.com/EtienneDepaulis)

License
-------

Copyright (c) 2015 Etienne Depaulis

This source code released under an MIT license.