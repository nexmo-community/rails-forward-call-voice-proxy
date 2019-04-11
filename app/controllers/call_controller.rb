class CallController < ApplicationController

    BASE_URL = 'http://bengreenberg.ngrok.io'
    NEXMO_NUMBER='972526537756'
    PERSONAL_NUMBER = '972587834182'

    def index
    end

    def answer
        render json:
        [
            {
                "action": "talk",
                "text": "Please wait while we forward your call"
              },
            {
                :action => 'connect',
                :eventUrl => [],
                :from => NEXMO_NUMBER,
                :endpoint => [
                    {  
                        :type => 'phone',
                        :number => PERSONAL_NUMBER
                    }
                ]
            }
        ]
    end

    def event
    end
    
end
