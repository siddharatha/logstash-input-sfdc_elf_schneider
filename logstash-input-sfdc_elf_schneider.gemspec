Gem::Specification.new do |s|
  s.name            = 'logstash-input-sfdc_elf_schneider'
  s.version         = '1.0.9'
  s.licenses        = ['MIT']
  s.summary         = 'A Logstash plugin the receives events from Salesforce EventLogFile'
  s.description     = 'This gem is a logstash plugin required to be installed on top of the Logstash core pipeline
                       using $LS_HOME/bin/plugin install gemname. This gem is not a stand-alone program , changes made are quite specific to schneider electric, we removed some logtypes to support our cause'
  s.authors         = ['Abhishek Sreenivasa', 'Mohammed Islam','Siddharatha Nagavarapu']
  s.email           = %w(asreenivasa@salesforce.com mislam@salesforce.com siddharatha.nagavarapu@se.com)
  s.homepage        = 'http://www.salesforce.com'
  s.require_paths   = ['lib']

  # Files
  s.files = `git ls-files`.split($ORS) + ::Dir.glob('vendor/*')

  # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { 'logstash_plugin' => 'true', 'logstash_group' => 'input' }

  # Gem dependencies
  s.add_runtime_dependency 'logstash-core', '>= 1.4.0', '< 2.0.0'
  s.add_runtime_dependency 'logstash-codec-plain'
  s.add_runtime_dependency 'activesupport'
  s.add_runtime_dependency 'databasedotcom'

  s.add_development_dependency 'logstash-devutils'
end
