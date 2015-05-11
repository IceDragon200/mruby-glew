MRuby::Gem::Specification.new 'mruby-glew' do |spec|
  spec.author = 'Corey Powell'
  spec.license = 'MIT'
  spec.version = '1.11.0.0'
  #spec.cc.flags << '-Werror'
  spec.linker.libraries << 'GLEW'
end
