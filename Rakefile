$LOAD_PATH << Dir.pwd

Dir.glob('lib/tasks/*.rake').each { |t| import t }

task :console do
  system "irb -r config/boot -I #{Dir.pwd}"
end

task :c => :console
