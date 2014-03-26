# Based on joshuaclayton and rbates Rakefiles dotfiles with my variations.
# Need improve Installer class and add methods for directories.
# Dir.glob("oh-my-zsh/**/*")
files = File.new(File.join(pwd, "FILES"), "r").read.split("\n")
namespace :dot do
  desc "Install all dotfiles"
  task :install do
    files.each do |file|
      Installer.new.symlink(File.join(pwd, file), target_path(file))
    end
  end

  desc "Remove all dotfiles"
  task :uninstall do
    files.each do |file|
      Installer.new.unlink(target_path(file))
    end
  end
end
namespace :zsh do
    desc "Install oh my zsh"
  task :ohz_install do
    install_oh_my_zsh
  end

  desc "Switch to zsh terminal"
  task :switch do
    switch_to_zsh
  end
end

def pwd; File.dirname(__FILE__); end

def target_path(file)
  File.join(ENV["HOME"], ".#{file}")
end

#Depurar clase
class Installer
  def symlink(target, link)
    if check_link(link)
      puts "Symlinking #{link} => #{target}"
      File.symlink(target, link)
    else
      puts "skipping ~/.#{link}"
    end
  end

  def check_link(link)
      check = true
      if File.symlink?(link)
        unlink(link)
      elsif File.exist?(link)
        puts "ERROR: File exists: #{link}"
        puts "overwrite ~/.#{link}? [ynq] "
        case $stdin.gets.chomp
        when 'y'
          replace_file(link)
        when 'q'
          exit
        else
         check = false
        end
      else
        check
      end
  end
  def replace_file(file)
    response = system %Q{rm -rf "#{file}"}
  end

  def delete_symlink(link)
    unlink(link) if File.symlink?(link)
  end
  def unlink(link)
    if File.exist?(link)
      descriptor = File.symlink?(link) ? "symlink" : "file"
      puts "Deleting #{descriptor} #{link}"
      File.unlink(link)
    end
  end
end

def install_oh_my_zsh
  if File.exist?(File.join(ENV['HOME'], ".oh-my-zsh"))
    puts "found ~/.oh-my-zsh"
  else
    print "install oh-my-zsh? [ynq] "
    case $stdin.gets.chomp
    when 'y'
      puts "installing oh-my-zsh"
      system %Q{git clone https://github.com/robbyrussell/oh-my-zsh.git "$HOME/.oh-my-zsh"}
    when 'q'
      exit
    else
      puts "skipping oh-my-zsh, you will need to change ~/.zshrc"
    end
  end
end

def switch_to_zsh
  if ENV["SHELL"] =~ /zsh/
    puts "using zsh"
  else
    print "switch to zsh? (recommended) [ynq] "
    case $stdin.gets.chomp
    when 'y'
      puts "switching to zsh"
      system %Q{chsh -s `which zsh`}
    when 'q'
      exit
    else
      puts "skipping zsh"
    end
  end
end