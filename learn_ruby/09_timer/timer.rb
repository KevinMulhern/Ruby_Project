class Timer

	attr_accessor :seconds

	def initialize
		@seconds = 0 
	end

	def time_string
		hrs = (@seconds / 60) /60
		mins = (@seconds / 30) % 60
		secs = @seconds % 60

		Time.at(@seconds).gmtime.strftime('%H:%M:%S')

	end

end