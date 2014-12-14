# encoding: utf-8

$:.push File.expand_path('../lib', __FILE__)

require 'acappella/version'

Gem::Specification.new do |s|
  s.name = 'acappella'
  s.version = ACappella::VERSION

  s.license = 'MIT'

  s.authors = ['Koichi ITO']
  s.date = '2014-12-15'
  s.description = 'A client-server model talk tool. Server speak characters that client was typing.'
  s.email = 'koic.ito@gmail.com'
  s.files = [
    'README.md',
    'bin/acappella-client',
    'bin/acappella-server',
    'LICENSE'
  ] + Dir['lib/**/*.rb']
  s.homepage = 'http://github.com/koic/acappella'
  s.require_paths = ['lib']
  s.summary = 'A client-server model talk tool. Server speak characters that client was typing.'

  s.executables = `git ls-files -- bin/*`.split("\n").map {|f| File.basename(f) }
end
