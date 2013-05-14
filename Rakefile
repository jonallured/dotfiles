require 'rake'
require 'erb'

class DotFile < Struct.new(:path)
  def name
    @name ||= path.match(/files\/(.+)\.(?:sh|erb)$/)[1]
  end

  def exists?
    File.exist?(File.join(ENV['HOME'], ".#{name}"))
  end

  def erb?
    path =~ /\.erb$/
  end
end

class Linker < Struct.new(:dot_files)
  def self.run!(dot_files)
    new(dot_files).run!
  end

  def link_file(name)
    puts "linking ~/.#{name}"
    system %Q{ln -fs $PWD/files/#{name}.sh $HOME/.#{name}}
  end

  def remove_file(name)
    puts "removing ~/.#{name}"
    system %Q{rm $HOME/.#{name}}
  end

  def generate_file(path, name)
    puts "generating ~/.#{name}"
    File.open(File.join(ENV['HOME'], ".#{name}"), 'w') do |new_file|
      new_file.write ERB.new(File.read(path)).result(binding)
    end
  end

  def run!
    dot_files.each do |dot_file|
      remove_file(dot_file.name) if dot_file.exists?

      if dot_file.erb?
        generate_file dot_file.path, dot_file.name
      else
        link_file dot_file.name
      end
    end
  end
end

desc "Symlink dotfiles to home folder"
task :install do
  dot_files = Dir['files/*'].map &DotFile.method(:new)
  Linker.run! dot_files
end
