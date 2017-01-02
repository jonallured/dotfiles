require 'rake'

class DotFile < Struct.new(:path)
  def link!
    remove if exists?

    puts "linking ~/#{name}"
    system %Q{ln -fs $PWD/#{path} $HOME/#{name}}
  end

  private

  def name
    @name ||= path.split('/').last
  end

  def exists?
    File.exist?(File.join(ENV['HOME'], name))
  end

  def remove
    puts "removing ~/#{name}"
    system %Q{rm $HOME/#{name}}
  end
end

desc "Symlink dotfiles to home folder"
task :install do
  dot_files = Dir['files/.??*'].map &DotFile.method(:new)
  dot_files.each &:link!
end
