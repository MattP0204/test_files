require "watir-webdriver"
require "rspec"

	@browser = Watir::Browser.new :firefox
	@browser.window.maximize()
	@browser.goto "google.com"

	@browser.text_field(id: "gbqfq").set("Nicki Minaj Anaconda")

	@browser.button(id: "gbqfb").click

	@browser.link(:text, "Images for Nicki Minaj Anaconda").when_present.click

	@browser.image(:name, "yLQJFoM3pHvn7M:").when_present.click