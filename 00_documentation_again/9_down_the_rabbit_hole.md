```ruby
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
```
In the documentation for `module YAML` there are no any methods listed. However, it is mentioned there that "The `YAML` module is an alias of `Psych`, the `YAML` engine for Ruby." I am able to find the documentation for `#load_file` in `module Psych`.
### *Correct*