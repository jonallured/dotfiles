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

  def link!
    puts "linking ~/.#{name}"
    system %Q{ln -fs $PWD/files/#{name}.sh $HOME/.#{name}}
  end

  def generate!
    puts "generating ~/.#{name}"
    File.open(File.join(ENV['HOME'], ".#{name}"), 'w') do |new_file|
      new_file.write ERB.new(File.read(path)).result(binding)
    end
  end

  def remove!
    puts "removing ~/.#{name}"
    system %Q{rm $HOME/.#{name}}
  end
end

class Linker < Struct.new(:dot_files)
  def self.run!(dot_files)
    new(dot_files).run!
  end

  def run!
    dot_files.each do |dot_file|
      dot_file.remove! if dot_file.exists?

      if dot_file.erb?
        dot_file.generate!
      else
        dot_file.link!
      end
    end
  end
end

desc "Symlink dotfiles to home folder"
task :install do
  dot_files = Dir['files/*'].map &DotFile.method(:new)
  Linker.run! dot_files
end
