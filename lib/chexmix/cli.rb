require 'thor'
require 'pp'

module Chexmix
  class Cli < Thor

    # options = {
    #   "os" => "OS X",
    #   "version" => "Sierra",
    #   "browser" => "Chrome",
    #   "browser_version" => "60",
    #   "resolution" => "1024x768"
    # }

    desc "test OS VERSION BROWSER BROWSER_VERSION RESOLUTION", "This will set the configs to test your app"
    def test(spec_path, os, version, browser, browser_version, resolution)

      options = {
        "spec" => spec_path,
        "config" => [
          {
            "os" => os,
            "version" => version,
            "browser" => browser,
            "browser_version" => browser_version,
            "resolution" => resolution
          }
        ]
      }

      pp options
    end
  end
end
