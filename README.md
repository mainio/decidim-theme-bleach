# Decidim::Bleach - A Bleach theme for Decidim

The gem has been developed by [Mainio Tech](https://www.mainiotech.fi/).

A [Decidim](https://github.com/decidim/decidim) theme module that customizes the
default Decidim theme with a light color scheme.

**NOTE:** This theme only works with Decidim version 0.25 and later. Make sure
you are running the latest Decidim core version before installing this theme.

By default it looks like this:

![Decidim Bleach Theme](screenshot.jpg)

Feel free to customize to your needs within your instance!

## Installation

Add this line to your application's Gemfile:

```ruby
gem "decidim-theme-bleach"
```

And then execute:

```bash
$ bundle
```

Finally, re-compile the instance's assets or run the webpack-dev-server in
development environment and wait for it to compile the assets successfully.

That's it. Now your Decidim instance should use the Bleach theme. Please also
remove any instance theme customizations before installing this theme and let
the module take care of styling your instance. If you have applied
customizations to your Decidim instance before, you probably need to re-do some
of them after installing this theme.

To keep the gem up to date, you can use the commands above to also update it.

## Contributing

For instructions how to setup your development environment for Decidim, see
[Decidim](https://github.com/decidim/decidim). Also follow Decidim's general
instructions for development for this project as well.

## License

See [LICENSE-AGPLv3.txt](LICENSE-AGPLv3.txt).
