desc 'create style.yml file'
task :yml do
  sh "ruby yml.rb > style.yml"
end

desc 'create style.json'
task :style do
  sh "charites build style.yml style.json"
end

desc 'host'
task :host do
  sh "budo -d ."
end

