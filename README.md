# Hackauthon

Setting up a server that authenticates private- and presence-channels for hackathon attendees, so they have more time to get hacking.

## Installation

    $ gem install pusher-hackathon

## Usage

Simply run the `pusher-hackathon` command, with your app's `id`, `key`, and `secret` as options. If you wish, you can choose to specify a `port`.

    $ pusher-hackathon run --id your_app_id \
                           --secret your_app_secret \ 
                           --key your_app_key \
                           [--port your_port]

This will set up a Sinatra server for you. The default port it will be running on is `9090`.

Then, in your Javascript code, make the Pusher connection point to this server's `pusher/auth` endpoint for authentication. For presence-channels, you can also specify information to be associated with a channel member. A `user_id` is required, and `user_info` is optional.

```js
var pusher = new Pusher('APP_KEY', {
  authEndpoint: "http://localhost:9090/pusher/auth", // 9090 can be substituted for the port you specified.

  auth: {
    params: {
      user_id: 1,
      user_info: JSON.stringify({twitter: "pusher"}) // optional
    }
  }
});
```

Boom, job done! Now get hacking!

## Contributing

1. Fork it ( https://github.com/[my-github-username]/pusher-hackathon/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
