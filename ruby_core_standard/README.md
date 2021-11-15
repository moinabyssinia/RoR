### Structs
Only useful when creating a class with a few attributes 
When it gets crowded, use the conventional class

### files
"a+" appends - does not replace

### Marshal class
converts collections of Ruby objects into a byte stream - allowing them to be stored outside the currently active script
dump the Ruby object as a string and then load it later

`output = Marshal.dump(player)`



`JSON.parse(json_string)`
`JSON.dump(my_hash)`

If you know the data can be trusted, load json file like below
`JSON.load( File.new("./example.json") )`

### using YAML
require 'YAML'
YAML.dump(my_hash)

`people = YAML.load_file( "example.yml")`
`yaml_output = people.to_yaml`

### encoding
`Base64.encode64(message)`

### logging
