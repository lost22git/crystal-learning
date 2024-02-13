#!/usr/bin/env crystal

#
#  除非定义类型为 Nil 或者 联合类型 T | Nil (aka. T?)
#
#  否则值都不能为 nil
#

a : String? = "hello"
p! a
p! a.try &.upcase

a = nil
p! a
p! a.try &.upcase || "world"

# if not-nil => if true
if v = a
  p "v is not nil"
else
  p "v is nil"
end