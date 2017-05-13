=begin 1) Can you explain the ||= operator?
Example of use:
  a = 1
  b = 2
  a ||= b  (Hint! Same as: a = a || b)

One more example of use:
  c = nil
  d = 40
  c ||= d  (Hint! Same as: c = c || d)

=end


# It means if C has no value, then assign it value D.
# If A has a value, then it won't be assigned value B.