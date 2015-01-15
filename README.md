# ModelToLocale

This gem creates locale file from model attributes.

## Installation

Add this line to your application's Gemfile:

    gem 'model_to_locale'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install model_to_locale

## Usage

Create a new locale file

`rails g model_to_locale:create tr`

`models.tr.yml` file created.


```yml
---
tr:
  activerecord:
    models:
      profile: Profile
      group: Group
    attributes:
      profile:
        id: Id
        first_name: First_name
        last_name: Last_name
        gsm: Gsm
        birthday: Birthday
        user_id: User_id
        created_at: Created_at
        updated_at: Updated_at
      group:
        id: Id
        number: Number
        name: Name
        domain_id: Domain_id
        created_at: Created_at
        updated_at: Updated_at

```

Add model attributes to locale file

`rails g model_to_locale:add_model tr --model City`

`City` model attributes added to `models.tr.yml`.

```yml
---
tr:
  activerecord:
    models:
      profile: Profile
      group: Group
      city: City
    attributes:
      profile:
        id: Id
        first_name: First_name
        last_name: Last_name
        gsm: Gsm
        birthday: Birthday
        user_id: User_id
        created_at: Created_at
        updated_at: Updated_at
      group:
        id: Id
        number: Number
        name: Name
        domain_id: Domain_id
        created_at: Created_at
        updated_at: Updated_at
      city:
        id: Id
        name: Name

```


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Credits

![lab2023](http://lab2023.com/assets/images/named-logo.png)

- ModelToLocale is maintained and funded by [lab2023 - information technologies](http://lab2023.com/)
- Thank you to all the [contributors!](../../graphs/contributors)
- The names and logos for lab2023 are trademarks of lab2023, inc.

## License

Copyright 2014 lab2023 – information technologies