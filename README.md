# NIS Faker

Gerador de NIS (PIS / PASEP / NIT).

Generates Brazilian NIS (PIS / PASEP / NIT) numbers.

## Install

Use rubygems:

    gem install nis_faker
  
Or add it to your Gemfile

    group :development, :test do
      # ...
      gem 'nis_faker'
    end

## Usage

    Faker::Nis.number        #=> "12073822829"
    Faker::Nis.pretty        #=> "120.7382.282-9"

## License

NIS Faker is released under the MIT license