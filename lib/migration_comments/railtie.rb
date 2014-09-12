module MigrationComments
  class Railtie < Rails::Railtie
    initializer 'migration_comments.load_adapter' do
      ActiveSupport.on_load :active_record do
        MigrationComments.setup
      end
    end
  end
end
