# gem install httparty
# gem install nokogiri
require 'httparty'
require 'nokogiri'

uri = "http://finance.naver.com/sise/"

# HTTParty를 사용하여 url의 정보를 가져온다
response = HTTParty.get(uri)
# response = HTTParty.get uri

# puts response

# Nokigiri를 이용하여 보기 좋게 정보를 변환
text = Nokogiri::HTML(response.body)

# puts text

# .css를 이용하여 셀렉터 정보를 추출
kospi = text.css('#KOSPI_now')

# .text를 이용하여 태그 안의 요소를 가져온다
puts kospi.text