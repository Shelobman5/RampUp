require 'rubygems' # not necessary with ruby 1.9 but included for completeness
require 'twilio-ruby'

account_sid = 'ACa589dc723c5a8ae803b87ca59f2984c3'
auth_token = '45933564ef7439c447290bec6b71e4b6'

# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new account_sid, auth_token

# @client.messages.create(
#   from: '+17083156090',
#   to: '+16306704312',
#   body: 'I can send texts! - Stefan'
# )
@call = @client.calls.create(
  from: '+17083156090',
  to: '+16306704312',
  url: 'http://example.com/call-handler'
)