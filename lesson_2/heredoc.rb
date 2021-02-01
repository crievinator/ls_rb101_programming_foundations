require 'yaml'

yaml_hash = YAML.load_file('heredoc.yml')
p yaml_hash
p yaml_hash.inspect
p yaml_hash.class

yaml_hash.each_value do |value|
  p value
end

puts yaml_hash['en']
