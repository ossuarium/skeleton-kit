require 'kit'

# Here you can add additional rake tasks to help maintain your kit.

namespace 'db' do

  kit = Kit.new 'config.yml'

  task :create do
    kit.db_create
  end

  task :destroy do
    kit.db_destroy
  end

  task :reset => [:destroy, :create, :migrate] do
  end

  task :environment do
    kit.db_connect
  end

  task :migrate, [:direction, :steps]  => [:create, :environment] do |_, args|
    args.with_defaults(direction: nil, steps: 1)
    if args[:direction].nil?
      kit.db_migrate
    else
      kit.db_migrate args[:direction], args[:steps]
    end
  end
end

namespace 'mk' do

  def make_class_template file_name, class_line
    unless File.exists? file_name
      f = File.new file_name, 'w+'
      f << class_line
      f << "\nend"
      f.close
    end
  end

  task :migration, :name do |_, args|
    make_class_template "migrations/#{Time.now.to_i}_#{args[:name]}.rb", "class #{args[:name].camelize} < ActiveRecord::Migration"
  end

  task :model, :name do |_, args|
    make_class_template "models/#{args[:name]}.rb", "class Kit::#{args[:name].camelize} < ActiveRecord::Base"
  end

  task :group, :name do |_, args|
    kit = Kit.open 'config.yml'
    Kit::Group.create :name => args[:name].gsub('_', ' ')
    make_class_template "actions/#{args[:name]}.rb", "module KitActions#{args[:name].camelize}"
  end
end