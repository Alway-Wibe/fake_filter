class FakeFilter
  require 'json'
  def self.is_disposable_email?(email)
    begin
      domain = email.split('@').last.delete(' ').downcase
      data_hash = FakeFilter.data_has_from_json_file
      return true if data_hash['domains'].keys.include?(domain)
      return true if data_hash['domains'].any? {|key, value| value['provider'] == domain}
      false
    rescue => e
      Rails.logger.warn "Error in is_disposable_email? #{e.message}"
      true # Assumed email is invalid when error happened
    end
  end

  def self.data_has_from_json_file
    file = File.read('./data.json')
    data_hash = JSON.parse(file)
    data_hash
  end
end