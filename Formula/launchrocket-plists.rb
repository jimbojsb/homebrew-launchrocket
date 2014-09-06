require 'formula'

class LaunchrocketPlists < Formula
  url 'https://github.com/jimbojsb/launchrocket-plists/archive/v0.1.4.zip'
  sha1 '0c139b1a8a46d6b1505d04817f19fa4101610cd5'
  homepage 'http://github.com/jimbojsb/launchrocket-plists'
  version '0.1.4'
  skip_clean "plist/"
  
  def install
    ohai "Installing..."
    (etc/'launchrocket').mkpath rescue nil
    (etc/'launchrocket').install Dir["plist/*"]
  end
end
