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
* `user_ids` (Array&lt;String&gt;) - An array of string user IDs. Events received from GitHub will be sent to every user defined by this attribute.

### Example

Here is an example of what a configuration for Lita running on HipChat might look like.

``` ruby
Lita.configure do |config|
  config.handlers.github_web_hooks.room_ids = ["12345_myroom"]
  config.handlers.github_web_hooks.user_ids = ["12345_123456@chat.hipchat.com"]
end
```

## Usage

**IMPORTANT: Only the ping, push, and watch hooks are implemented so far. The rest of the hooks will be coming when GitHub documents their payloads.**

1. Specify which rooms and users you want GitHub activity announced to via the configuration attributes.
1. Use GitHub's API or a repository's settings page to create a new hook for the events you're interested in. Set the "Payoad URL" to http://example.com/github-web-hooks, where example.com is the hostname where your Lita instance is running.

## License

[MIT](http://opensource.org/licenses/MIT)
