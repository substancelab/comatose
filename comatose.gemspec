# Generated on Tue May 20 20:13:12 -0500 2008
Gem::Specification.new do |s|
  s.name = "comatose"
  s.version = "2.0.9"
  s.date = "2013-05-21"
  s.summary = "Micro CMS designed for being embedded into existing Rails applications"
  s.email = "matt@elucidata.net"
  s.rubyforge_project = 'comatose'
  s.homepage = "http://comatose.rubyforge.org"
  s.description = "Comatose is a micro CMS designed for being embedded into existing Rails applications."
  s.has_rdoc = true
  s.authors = ["M@ McCray"]
  s.bindir = 'bin'

  s.files         = `git ls-files`.split($\)
  s.executables   = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.name          = "comatose"
  s.require_paths = ["lib"]


end
