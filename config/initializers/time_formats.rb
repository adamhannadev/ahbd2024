# config/initializers/time_formats.rb
Time::DATE_FORMATS[:twelve_hour] = lambda { |time| time.strftime('%I:%M %p') }
