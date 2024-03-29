# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
require 'securerandom'

def secure_token
	token_file = Rails.root.join('.secret')
	if File.exist?(token_file)
		#Use the existing token.
		File.read(token_file).chomp
	else
		# Generate a new token and store it into token_file.
		token = SecureRandom.hex(64)
		File.write(token_file, token)
		token
	end
end


SampleApp3::Application.config.secret_key_base = '77bf30cbd438ca3158acbf65084e4f46e8621a55fc505ee25eeac434518c79d02c8fb9f9ec230c5cf585f9e5b04fb7c69a522706075d9f2bad873a3030763116'
