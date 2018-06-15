require 'httparty'
require 'nokogiri'

# 1. naver에 원하는 정보가 담긴 페이지를 요청한다.
# 2. 네이버에게 받은 문서 안에 있는 원하는 정보를 빼온다.
# 3. 빼온 정보를 출력한다.

res = HTTParty.get("http://finance.naver.com/item/main.nhn?code=035900")
val = Nokogiri::HTML(res).css("#content > div.section.trade_compare > table > tbody > tr:nth-child(1) > td:nth-child(2)")

# res1 = HTTParty.get("http://nko.kr/")
# val1 = Nokogiri::HTML(res1).css("#nkoclockdisplay")

puts "현재 jyp의 주식가격은 " + val.text

# now_value