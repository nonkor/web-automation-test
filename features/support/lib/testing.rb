module Testing
  class << self
    attr_accessor :browser
  end

  module Methods
    def root_url
      "https://staging-web.farmdrop.com/"
    end

    def timestamp
      Time.now.utc.strftime('%Y%m%dT%H%M%S')
    end

    def debug_mode?
      !!ENV['DEBUG_MODE']
    end

    def embed_screenshot
      encoded_img = Testing.browser.screenshot.base64
      embed(encoded_img, 'image/png;base64', "SCREENSHOT")
    end

    def report_dir
      'features/reports'
    end

    # TODO: this method should be used only for DEBUG purpose
    def save_screenshot
      browser.screenshot.save("#{report_dir}/shot#{timestamp}.png")
    end
    alias_method :shot, :save_screenshot
  end

  self.extend Methods
end
