namespace :data do
  desc "Uploads data from excel"
  task import: :environment do
      # Set the path to your Excel file
      file_path = Rails.root.join('lib', 'assets', 'data.xlsx').to_s
    
      # Open the spreadsheet
      spreadsheet = Roo::Spreadsheet.open(file_path)
  
      # Select the first sheet
      sheet = spreadsheet.sheet(0)
  
      # Iterate over each row
      sheet.each_with_index(level: 'Level', name: 'Figure', manref: 'Manual', dance: 'Dance', style: 'Style') do |row, row_index|
        # next if index.zero? # Skip header row if there is one
  
        # Process row data
        puts "Row #{row_index + 1}: #{row.inspect}"       
                                  
          next if row_index == 0 || Figure.find_by(name: row[:name]).present?
  
          Figure.create(
              level: row[:level],
              name: row[:name],
              manref: row[:manref],
              dance: row[:dance],
              style: row[:style]
          )
    end      
  end

end
