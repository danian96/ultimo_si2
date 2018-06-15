# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
Rails.application.config.assets.precompile += %w( colors/blue-dark.css )
Rails.application.config.assets.precompile += %w( colors/blue.css )
Rails.application.config.assets.precompile += %w( colors/default-dark.css )
Rails.application.config.assets.precompile += %w( colors/default.css )
Rails.application.config.assets.precompile += %w( colors/green-dark.css )
Rails.application.config.assets.precompile += %w( colors/green.css )
Rails.application.config.assets.precompile += %w( colors/megna-dark.css )
Rails.application.config.assets.precompile += %w( colors/megna.css )
Rails.application.config.assets.precompile += %w( colors/purple-dark.css )
Rails.application.config.assets.precompile += %w( colors/purple.css )
Rails.application.config.assets.precompile += %w( colors/red-dark.css )
Rails.application.config.assets.precompile += %w( colors/red.css )
