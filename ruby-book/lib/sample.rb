def currency_of(country)
  case country
  when :japan
    'yen'
  when :us
      'dollar'
    when :india
      'rupee'
    else
      # raiseで意図的に例外を発生させる
      raise "無効な国名です。#{country}"
  end
end

puts currency_of(:japan)
puts currency_of(:us)
puts currency_of(:india)
puts currency_of(:italy)