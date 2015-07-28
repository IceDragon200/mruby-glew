MRuby::Gem::Specification.new 'mruby-glew' do |spec|
  spec.author = 'Corey Powell'
  spec.license = 'MIT'
  spec.version = '1.11.0.0'
  libname = ($linker_libraries && $linker_libraries['glew']) ||
    ENV['GLEW_LIBRARY_NAME'] || 'GLEW'
  spec.linker.libraries << libname
end
