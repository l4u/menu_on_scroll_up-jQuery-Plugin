require 'bundler'

task :default => [:coffee_compile, :uglify]

task :coffee_compile do
  require 'coffee-script'
  File.open("js/menu_on_scroll_up.js", "w") do |f|
    f << CoffeeScript.compile(File.read("menu_on_scroll_up.coffee"))
  end 
end

task :uglify do
  require 'uglifier'
  File.open("js/menu_on_scroll_up.min.js", "w") do |f|
    f << Uglifier.compile(File.read("js/menu_on_scroll_up.js"))
  end
end
