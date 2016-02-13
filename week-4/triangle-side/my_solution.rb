# I worked on this challenge [by myself, with: ].


# Your Solution Below

# def valid_triangle?(a, b, c)
#   if a == b && b = c
#     then return true
#   elsif a == 0 || b == 0 || c == 0
#     then return false
#   elsif a == b || b == c || a == c
#     then return true
#   elsif a**2 + b**2 == c**2 ||a**2 + c**2 == b**2 ||b**2 + c**2 == a**2 then return true
#   else
#     return false
#   end
# end

def valid_triangle?(a, b, c)
  if a + b > c && a + c > b && b + c > a
    return true
  else
    return false
  end
end