# webpack_manifest_path = Rails.root.join('app', 'assets', 'manifest.json')
# Rails.application.config.assets.webpack_manifest =
#  if File.exist?(webpack_manifest_path)
#    JSON.parse(File.read(webpack_manifest_path))
#  end
# Rails.application.config.assets.precompile += %w( build/user.js )
# Rails.application.config.assets.precompile += %w( user.js )
Rails.application.config.assets.precompile += %w(*.js *.css)
