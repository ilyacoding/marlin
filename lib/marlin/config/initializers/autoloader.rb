AUTOLOAD_DIRS = %w(
  actions/*.rb
  persisters/*.rb
)

AUTOLOAD_DIRS.each do |autoload_dir|
  Dir[File.join(Marlin::App.root, autoload_dir)].each do |file|
    next if file.include?("initializers/autoloader")
    require file
  end
end
