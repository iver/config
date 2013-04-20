#!/usr/bin/env ruby -w
# Iván Jaimes <ivan.iver@gmail.com>
# File: ssh_key_add.rb
# --
# (c) Iver!
# Load all ssh_key files from ~/.ssh directory on Cygwin shell
# Your rsa files must be named *.rsa

# Config elements
Config =
  {
    :banner => "\n# SSH Environment Configuration.\n",
	:bannerAddKey => "# Loading ssh keys.\n\n",
    :ssh_path     => File.join( ENV["HOMEDRIVE"], ENV["HOMEPATH"], ".ssh" )
  }

puts Config[:banner]
puts Config[:bannerAddKey]

directory = Dir.new(Config[:ssh_path])

# Add ssh keys
directory.each {  | file |
	if file =~ /\.rsa$/
		puts "\nAdding #{file} key ... "
		`ssh-add "#{Config[:ssh_path]}/#{file}"`
	end
}
puts "\nYou can show the latest files added, typing: ssh-add -l"