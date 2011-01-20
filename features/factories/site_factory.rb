def change_site_address(site_address)
  u = Site.first.primary_url
  u.address = site_address
  u.dash_address = site_address.gsub(/./, "-")
  u.save!
end
