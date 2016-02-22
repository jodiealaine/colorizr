class String
	def colors
		[:red, :green, :yellow, :blue, :pink, :light_blue, :white, :light_grey, :black]
	end

	def self.create_colors
		#code to generate all color methods goes here
		[:red, :green, :yellow, :blue, :pink, :light_blue, :white, :light_grey, :black].each do |c|
			self.send(:define_method, "#{c}") do
				"#{colorize_formating c}#{self}#{resume_normal_formating}"
			end
		end
	end
	def colorize_formating color
		format = "\e[31m" if color == :red
		format = "\e[32m" if color == :green
		format = "\e[33m" if color == :yellow
		format = "\e[34m" if color == :blue
		format = "\e[35m" if color == :pink
		format = "\e[94m" if color == :light_blue
		format = "\e[97m" if color == :white
		format = "\e[37m" if color == :light_grey
		format = "\e[30m" if color == :black
		format
	end
	def resume_normal_formating
		"\e[0m"
	end
end

# Call the create_colors methods so that the colorizr methods 
# are available when the customizr gem is in installed.
String.create_colors