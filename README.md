# lita-github-web-hooks

**lita-github-web-hooks** integrates GitHub [Web Hooks](https://developer.github.com/webhooks/) with [Lita](http://www.lita.io/). It allows Lita to announce various GitHub activity in the chat.

## Installation

Add lita-github-web-hooks to your Lita instance's Gemfile:

``` ruby
gem "lita-github-web-hooks"
```

## Configuration

### Required attributes

* `room_ids` (Array&lt;String&gt;) - An array of string room IDs. Events received from GitHub will be announced in every room defined by this attribute.

### Example

Here is an example of what a configuration for Lita running on HipChat might look like.

``` ruby
Lita.configure do |config|
  config.handlers.github_web_hooks.room_ids = [
    "12345_123456@chat.hipchat.com"
  ]
end
```

## Usage

1. Specify which rooms you want GitHub activity announced in via the configuration attribute.
1. Use GitHub's API or a repository's settings page to create a new hook for the events you're interested in.
1. Set the "Payoad URL" to http://example.com/github-web-hooks, where example.com is the hostname where your Lita instance is running.
1. **Important**: Set the "Payload version" to "application/vnd.github.v3+json". The "form" media type is not supported and will prevent messages from appearing via Lita.

## License

[MIT](http://opensource.org/licenses/MIT)
