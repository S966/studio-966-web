# -*- encoding: utf-8 -*-
# stub: newrelic_rpm 3.9.0.229 ruby lib

Gem::Specification.new do |s|
  s.name = "newrelic_rpm".freeze
  s.version = "3.9.0.229"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jason Clark".freeze, "Sam Goldstein".freeze, "Jonan Scheffler".freeze, "Ben Weintraub".freeze, "Chris Pine".freeze]
  s.cert_chain = ["-----BEGIN CERTIFICATE-----\nMIIDODCCAiCgAwIBAgIBADANBgkqhkiG9w0BAQUFADBCMREwDwYDVQQDDAhzZWN1\ncml0eTEYMBYGCgmSJomT8ixkARkWCG5ld3JlbGljMRMwEQYKCZImiZPyLGQBGRYD\nY29tMB4XDTE0MDIxMjIzMzUzMloXDTE1MDIxMjIzMzUzMlowQjERMA8GA1UEAwwI\nc2VjdXJpdHkxGDAWBgoJkiaJk/IsZAEZFghuZXdyZWxpYzETMBEGCgmSJomT8ixk\nARkWA2NvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBANxaTfJVp22V\nJCFhQTS0Zuyo66ZknUwwoVbhuSoXJ0mo9PZSifiIwr9aHmM9dpSztUamDvXesLpP\n8HESyhe3sgpK0z7UXbDmtWZZx43qulx3xTObLQauVZcxP8qqGqvRzdovqXnFe8lN\nsRUnXQjm9kArMI8uHhcU7XvlbQeTtPcjP0U/ZSyKABsJXRamQ/SVCPXqAHXv+OWP\nt4yDB/MrAQFVSoNisyYtB7Af/izqw0/cnUCAOXGQL24l4Ir0dwMd0K6oAnaG93DB\nv6yb30VT5elw40BeIhBsjZP731vRgXIlIKYwhVAlkvRkexAy9kH456Vt0fDBBYka\neE53BhdcguUCAwEAAaM5MDcwCQYDVR0TBAIwADAdBgNVHQ4EFgQUPJxv/VCFdHOH\nlINeV2xQGQhFthEwCwYDVR0PBAQDAgSwMA0GCSqGSIb3DQEBBQUAA4IBAQDRCiPq\n50B4sJN0Gj2T+9g+uXtC845mJD+0BlsAVjLcc+TchxxD3BYeln9c2ErPSIrzZ92Q\nYlwLvw99ksJ5Qa/tAJCUyE3u9JuldalewRi/FHjoGcdhjUErzIyHtNlnCbTMfScz\n5T+r8iUhvt0tcZ0/dQ1LFN8vMizN4Rm6JMXsmkHHxuosllQ9Q14sCYd2ekk2UF0l\n59Jd6iWx3iVmUHSQNXiAdEihcwcx3e71dBNzl6FiR328PzniUjrhoSKzVLQv+JlR\n1fUxkomKs2EL+FYMwnAb+VmNOhv1S+sJhbjZ30PKgz6vLhT6unieCjLk9wGGmlSK\nYjbnvA9qraLLajSj\n-----END CERTIFICATE-----\n".freeze]
  s.date = "2014-06-25"
  s.description = "New Relic is a performance management system, developed by New Relic,\nInc (http://www.newrelic.com).  New Relic provides you with deep\ninformation about the performance of your web application as it runs\nin production. The New Relic Ruby Agent is dual-purposed as a either a\nGem or plugin, hosted on\nhttp://github.com/newrelic/rpm/\n".freeze
  s.email = "support@newrelic.com".freeze
  s.executables = ["mongrel_rpm".freeze, "newrelic_cmd".freeze, "newrelic".freeze, "nrdebug".freeze]
  s.extra_rdoc_files = ["CHANGELOG".freeze, "LICENSE".freeze, "README.md".freeze, "GUIDELINES_FOR_CONTRIBUTING.md".freeze, "newrelic.yml".freeze]
  s.files = ["CHANGELOG".freeze, "GUIDELINES_FOR_CONTRIBUTING.md".freeze, "LICENSE".freeze, "README.md".freeze, "bin/mongrel_rpm".freeze, "bin/newrelic".freeze, "bin/newrelic_cmd".freeze, "bin/nrdebug".freeze, "newrelic.yml".freeze]
  s.homepage = "http://www.github.com/newrelic/rpm".freeze
  s.licenses = ["New Relic".freeze, "MIT".freeze, "Ruby".freeze]
  s.post_install_message = "# New Relic Ruby Agent Release Notes #\n\n## v3.9.0 ##\n\n* Rack middleware instrumentation\n\n  The Ruby agent now automatically instruments Rack middlewares!\n\n  This means that the agent can now give you a more complete picture of your\n  application's response time, including time spent in middleware. It also means\n  that requests which previously weren't captured by the agent because they\n  never made it to the bottom of your middleware stack (usually a Rails or\n  Sinatra application) will now be captured.\n\n  After installing this version of the Ruby agent, you'll see a new 'Middleware'\n  band on your application's overview graph, and individual middlewares will\n  appear in transaction breakdown charts and transaction traces.\n\n  The agent can instrument middlewares that are added from a config.ru file via\n  Rack::Builder, or via Rails' middleware stack in Rails 3.0+.\n\n  This instrumentation may be disabled with the\n  disable_middlware_instrumentation configuration setting.\n\n  For more details, see the documentation for this feature:\n\n    - http://docs.newrelic.com/docs/ruby/rack-middlewares\n    - http://docs.newrelic.com/docs/ruby/middleware-upgrade-changes\n\n* Capistrano 3.x support\n\n  Recording application deployments using Capistrano 3.x is now supported.\n\n  Many thanks to Jennifer Page for the contribution!\n\n* Better support for Sidekiq's Delayed extensions\n\n  Sidekiq jobs executed via the Delayed extensions (e.g. the #delay method) will\n  now be named after the actual class that #delay was invoked against, and will\n  have their job arguments correctly captured if the sidekiq.capture_params\n  configuration setting is enabled.\n\n  Many thanks to printercu for the contribution!\n\n* Improved Apdex calculation with ignored error classes\n\n  Previously, a transaction resulting in an exception that bubbled up to the top\n  level would always be counted as failing for the purposes of Apdex\n  calculations (unless the transaction name was ignored entirely). Now,\n  exceptions whose classes have been ignored by the\n  error_collector.ignore_errors configuration setting will not cause a\n  transaction to be automatically counted as failing.\n\n* Allow URIs that are not parseable by stdlib's URI if addressable is present\n\n  There are some URIs that are valid by RFC 3986, but not parseable by Ruby's\n  stdlib URI class. The Ruby agent will now attempt to use the addressable gem\n  to parse URIs if it is present, allowing requests against these problematic\n  URIs to be instrumented.\n\n  Many thanks to Craig R Webster and Amir Yalon for their help with this issue!\n\n* More robust error collection from Resque processes\n\n  Previously, traced errors where the exception class was defined in the Resque\n  worker but not in the Resque master process would not be correctly handled by\n  the agent. This has been fixed.\n\n* Allow Sinatra apps to set the New Relic environment without setting RACK_ENV\n\n  The NEW_RELIC_ENV environment variable may now be used to specify the\n  environment the agent should use from its configuration file, independently of\n  RACK_ENV.\n\n  Many thanks to Mario Izquierdo for the contribution!\n\n* Better error handling in Browser Application Monitoring injection\n\n  The agent middleware that injects the JavaScript code necessary for Browser\n  Application Monitoring now does a better job of catching errors that might\n  occur during the injection process.\n\n* Allow disabling of Net::HTTP instrumentation\n\n  Most instrumentation in the Ruby agent can be disabled easily via a\n  configuration setting. Our Net::HTTP instrumentation was previously an\n  exception, but now it can also be disabled with the disable_net_http\n  configuration setting.\n\n* Make Rails constant presence check more defensive\n\n  The Ruby agent now guards against the (rare) case where an application has a\n  Rails constant defined, but no Rails::VERSION constant (because Rails is not\n  actually present).\n\n  Many thanks to Vladimir Kiselev for the contribution!\n\n    See https://github.com/newrelic/rpm/blob/master/CHANGELOG for a full list of\n    changes.\n".freeze
  s.rubygems_version = "2.7.7".freeze
  s.summary = "New Relic Ruby Agent".freeze

  s.installed_by_version = "2.7.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>.freeze, ["= 10.1.0"])
      s.add_development_dependency(%q<minitest>.freeze, ["~> 4.7.5"])
      s.add_development_dependency(%q<mocha>.freeze, ["~> 0.13.0"])
      s.add_development_dependency(%q<yard>.freeze, [">= 0"])
      s.add_development_dependency(%q<rails>.freeze, ["~> 3.2.13"])
      s.add_development_dependency(%q<pry>.freeze, ["~> 0.9.12"])
      s.add_development_dependency(%q<guard>.freeze, ["~> 1.8.3"])
      s.add_development_dependency(%q<guard-minitest>.freeze, [">= 0"])
      s.add_development_dependency(%q<rb-fsevent>.freeze, ["~> 0.9.1"])
      s.add_development_dependency(%q<sqlite3>.freeze, ["= 1.3.8"])
    else
      s.add_dependency(%q<rake>.freeze, ["= 10.1.0"])
      s.add_dependency(%q<minitest>.freeze, ["~> 4.7.5"])
      s.add_dependency(%q<mocha>.freeze, ["~> 0.13.0"])
      s.add_dependency(%q<yard>.freeze, [">= 0"])
      s.add_dependency(%q<rails>.freeze, ["~> 3.2.13"])
      s.add_dependency(%q<pry>.freeze, ["~> 0.9.12"])
      s.add_dependency(%q<guard>.freeze, ["~> 1.8.3"])
      s.add_dependency(%q<guard-minitest>.freeze, [">= 0"])
      s.add_dependency(%q<rb-fsevent>.freeze, ["~> 0.9.1"])
      s.add_dependency(%q<sqlite3>.freeze, ["= 1.3.8"])
    end
  else
    s.add_dependency(%q<rake>.freeze, ["= 10.1.0"])
    s.add_dependency(%q<minitest>.freeze, ["~> 4.7.5"])
    s.add_dependency(%q<mocha>.freeze, ["~> 0.13.0"])
    s.add_dependency(%q<yard>.freeze, [">= 0"])
    s.add_dependency(%q<rails>.freeze, ["~> 3.2.13"])
    s.add_dependency(%q<pry>.freeze, ["~> 0.9.12"])
    s.add_dependency(%q<guard>.freeze, ["~> 1.8.3"])
    s.add_dependency(%q<guard-minitest>.freeze, [">= 0"])
    s.add_dependency(%q<rb-fsevent>.freeze, ["~> 0.9.1"])
    s.add_dependency(%q<sqlite3>.freeze, ["= 1.3.8"])
  end
end
