def install_and_activate_extension(name)
  e = Extension.new(:name => name, :title => name)
  e.save!
  e.install!
  s = Site.first
  s.activate_extension!(e)
end
