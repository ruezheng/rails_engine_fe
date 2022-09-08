class MerchantService

  def self.conn
    Faraday.new(url: 'http://localhost:3000')
  end

  def self.get_merchant(merchant_id)
    response = conn.get('/api/v1/merchants')
    JSON.parse(response.body, symbolize_names: true)[:data][0]
  end
end