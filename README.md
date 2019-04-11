# Forward a Call via Voice Proxy with Ruby on Rails

This application showcases how to forward a call via voice proxy with Nexmo Voice API and Ruby on Rails.

## Prerequisites

* Ruby
* Rails
* A Nexmo account
* A Nexmo phone number
* ngrok

## Installation

To install this application:

* Clone this repository locally
* Run `bundle install` and `rake db:migrate` from the command line

## Usage

To use this application:

* Set up a Nexmo account
* Purchase a Nexmo phone number
* Create a Nexmo Voice application
* Rename `.env.sample` to `.env` and update it with your Nexmo API credentials, including your Nexmo application ID
* Start your ngrok server from the command line
* Update the constant variables at the top of the `/app/controllers/call_controller.rb`:
  * `NEXMO_NUMBER`: Your Nexmo phone number
  * `BASE_URL`: Your ngrok URL 
  * `PERSONAL_NUMBER`: The number you want the incoming call to forward to
* Start your Rails server
* Call your Nexmo phone number and your call will be forwarded via voice proxy to the number defined in the `PERSONAL_NUMBER` variable

## License

This project is under the [MIT License](LICENSE)
