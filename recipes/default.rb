include_recipe "libgcrypt"
include_recipe "libtasn"

packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    libgnutls26
  /
when "precise"
  include_recipe "libp11-kit"

  packages |= %w/
    libgnutls26
  /
end
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
