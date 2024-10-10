module TimeHelper
    def generate_time_slots(start_time = '09:00', end_time = '20:00', interval = 30.minutes)
      start_time = Time.zone.parse(start_time)
      end_time = Time.zone.parse(end_time)
      times_array = []
  
      current_time = start_time
      while current_time <= end_time
        times_array << current_time
        current_time += interval
      end
  
      times_array
    end  
  end
  