def to_hex(r,g,b)
  [r,g,b].inject('#') do |hex, n|
    hex + n.to_s(16).rjust(2, '0')
  end
end

def to_ints(hex)
  # r = hex[1..2]
  # g = hex[3..4]
  # b = hex[5..6]

  # r,g,b = hex[1..2],hex[2..3],hex[4..5]
  # [r,g,b].map do |n|
  #   n.hex
  # end

  hex.scan(/\w\w/).map(&:hex)
end
