MRuby::Gem::Specification.new 'mruby-glew' do |spec|
  spec.author = 'Corey Powell'
  spec.license = 'MIT'
  spec.version = '1.11.0.0'
  spec.cc.flags << '-Wall -Wextra'
  spec.linker.libraries << 'GLEW'
end
