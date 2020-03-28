# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  
  attr_accessor :name, :csv_data
  
  def initalize(csv_data)
    @csv_data = csv_data
  end
  
  def parse
    @csv_data.split.collect do |address|
      address.split(',')
    end
    .flatten.uniq
  end
end
