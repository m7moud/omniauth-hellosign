# omniauth-hellosign
HelloSign Developer API OAuth 2.0 Strategy for OmniAuth.

## Installing
Add to your `Gemfile`:

```ruby
gem 'omniauth-hellosign'
```

Then `bundle install`.

## Usage
`OmniAuth::Strategies::HelloSign` is simply a Rack middleware.Read the [OAuth 2.0](https://github.com/intridea/oauth2) docs for detailed instructions

Here's a quick example, adding the middleware to a Rails app in `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :hellosign, ENV['HELLOSIGN_CLIENT_ID'], ENV['HELLOSIGN_SECRET']
end
```

## Auth Hash
Here's an example [Auth Hash](https://github.com/intridea/omniauth/wiki/Auth-Hash-Schema) available in `request.env['omniauth.auth']`:

```ruby
{
  :provider => 'hellosign',
  :uid => '5008b25c7f67153e57d5a357b1687968068fb465',
  :info => {
    email: 'email@hellosign.com'
  },
  :credentials => {
    :token => 'ABCDEF...', # access token, which you may wish to store
    :secret => '1321747205', # access token secret
  },
  :extra => {
    :raw_info => {
        account_id: "5008b25c7f67153e57d5a357b1687968068fb465",
        email_address: 'email@hellosign.com'
  }
}
```

## License
Copyright (c) 2015 by Mahmoud Ali

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
