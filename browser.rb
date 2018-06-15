# launchy 불러오기
# launchy로 브라우저 열기

require "launchy"
require "uri"

# "https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=0&ie=utf8&query=멀티캠퍼스"

# keywords = ["배고파", "진짜로", "졸려"]
keywords = ["다음", "구글", "페이스북"]

url = "https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=0&ie=utf8&query="
# keyword = URI.encode(keywords.sample)

keywords.each do |key|
    Launchy.open(url + key)
end

