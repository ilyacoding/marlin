AUTOLOAD_DIRS = %w(
  action.rb
  persister.rb
  actions/*.rb
  persisters/*.rb
)

REDIS = ConnectionPool.new(size: 15) { Redis.new }

AUTOLOAD_DIRS.each do |autoload_dir|
  Dir[File.join(Marlin::App.root, autoload_dir)].each do |file|
    next if file.include?("initializers/autoloader")
    require file
  end
end
