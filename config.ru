require 'rubygems'
require 'rack'
require 'middleman/rack'
require 'rack/contrib/try_static'

# Build the static site when the app boots up.
`bundle exec middleman build`

use Rack::Head
use Rack::TryStatic,
    root: 'tmp',                                    # Root DIR for static files
    urls: %w[/],                                    # Match All Requests
    try:  ['.html', 'index.html', '/index.html']    # Try these postfixes sequentially

# Serve a 404 page if the requested document was not found
run lambda { |env|
    [
        404,
        {
            'Content-Type' => 'text/html',
            'Cache-Control' => 'public, max-age=60'
        },
        File.open('tmp/404/index.html', File::RDONLY)
    ]
}
