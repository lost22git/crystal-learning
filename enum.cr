#!/usr/bin/env crystal

def __(t : String)
  puts ""
  puts "------\e[1;33m " + t + " \e[m" + ("-" * (50 - 8 - t.size))
  puts ""
end

__ "Flags"

@[Flags]
enum Color
  Red   # 1
  Green # 2
  Blue  # 4
end

p! Color::Red.value
p! Color.from_value(1)
p! Color.from_value?(100)
p! Color.new(1)

p! typeof(Color::Red | Color::Blue)
p! (Color::Red | Color::Blue).value
p! (Color::Red | Color::Blue).includes? Color::Blue
p! (Color::Red | Color::Blue).red?

p! Color.parse("Green")
p! Color.parse?("Greeeeen")
p! Color::Green.to_s
p! (Color::Red | Color::Blue).to_s

Color.each do |c, v|
  p "#{c} => #{v}"
end
p! Color.names
p! Color.values
