class EmailAddressParser
  
  attr_accessor :csv_email
  def initialize(csv_emails)
    @csv_email = csv_emails
  end
  
  def parse
    email = @csv_email.split(/[, ]/).uniq
    email.reject! {|element| element.empty?}
    email
  end
end