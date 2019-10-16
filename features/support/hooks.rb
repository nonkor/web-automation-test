Before do |scenario|
  @browser = Testing.browser
end

After do |scenario|
  puts "Screenshot can't be created because browser isn't run" unless Testing.browser

  if scenario.failed?
    embed_screenshot
    binding.pry if Testing.debug_mode?
  end
end

