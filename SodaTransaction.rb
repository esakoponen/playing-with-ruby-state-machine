require 'rubygems'
require 'state_machine'

class SodaTransaction

	state_machine :state, initial: :awaiting_selection do
		event :button_press do
			transition :awaiting_selection => :dispense_soda
		end
	end
end