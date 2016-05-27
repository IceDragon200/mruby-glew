module GLEW
  def self.experimental?
    experimental
  end

  # Determins if an extension is present
  #
  # @param [String] name extension name
  def has_extension?(name)
    get_extension(name)
  end
end
