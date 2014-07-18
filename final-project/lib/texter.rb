require 'rubygems' # not necessary with ruby 1.9 but included for completeness
require 'twilio-ruby'
require 'nokogiri'
require 'open-uri'
require 'date'
require_relative 'scraper.rb'
class Message
  def initialize (from, to)
    @from = from
    @to = to
secs = Time.parse("9:29am") - Time.now
  end
# put your own credentials here
# account_sid = 'ACe330ba04d082392df4cb3511dcb72cec'
#auth_token = '2008ea097713e401a16c54029058da82'

# set up a client to talk to the Twilio REST API

  def send_my_message
    @today = Scrape.new

    account_sid = 'ACe330ba04d082392df4cb3511dcb72cec'
    auth_token = '2008ea097713e401a16c54029058da82'
    @client = Twilio::REST::Client.new account_sid, auth_token
    @client.account.messages.create(
      :from => @from,
      :to => @to,
      :body => @today.text_body
    )
  end
end

