require 'csv'

CSV.open("vote.csv", "w+") do |v|
    v << ["yerim",1]
    v << ["changwon", 1]
    v << ["jongwon", 0]
    v << ["hongsuk", 0]
    v << ["dahye", 1]
    v << ["jangtiger", 1]
end
