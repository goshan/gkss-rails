require 'rails/generators/base'

module Gkss
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../../templates', __FILE__)
    desc 'Gkss Rails Install'

    def install_steps
      copy_file '1.html.haml', 'app/views/styleguides/1.html.haml'
      copy_file 'styleguides.yml', 'config/styleguides.yml'

      route "mount Gkss::Engine => '/gkss' if Rails.env.development?"
    end
  end
end
