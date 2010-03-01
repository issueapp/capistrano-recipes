namespace :bundler do
  task :create_symlink, :roles => :app do
    shared_dir = File.join(shared_path, 'bundle')
    release_dir = File.join(current_release, '.bundle')
    
    unless File.exists?(release_dir)
      run("mkdir -p #{shared_dir} && ln -s #{shared_dir} #{release_dir}")
    end
  end
  
  task :bundle_new_release, :roles => :app do
    # bundler.create_symlink
    run "cd #{current_path} && bundle install"
  end
  
  task :lock, :roles => :app do
    run "cd #{current_path} && bundle lock;"
  end
  
  task :unlock, :roles => :app do
    run "cd #{current_path} && bundle unlock;"
  end
end