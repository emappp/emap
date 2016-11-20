# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

Rails.application.config.assets.precompile += %w( jquery.min.js )
Rails.application.config.assets.precompile += %w( bootstrap.min.js )
Rails.application.config.assets.precompile += %w( fastclick.js )

Rails.application.config.assets.precompile += %w( Chart.min.js )
Rails.application.config.assets.precompile += %w( gauge.min.js )
Rails.application.config.assets.precompile += %w( bootstrap-progressbar.min.js )
Rails.application.config.assets.precompile += %w( icheck.js )
Rails.application.config.assets.precompile += %w( skycons.js )
Rails.application.config.assets.precompile += %w( date.js )
Rails.application.config.assets.precompile += %w( daterangepicker.js )
Rails.application.config.assets.precompile += %w( moment.min.js )
Rails.application.config.assets.precompile += %w( nprogress.js )
Rails.application.config.assets.precompile += %w( custom.min.js )