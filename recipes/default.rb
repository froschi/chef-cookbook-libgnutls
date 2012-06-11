include_recipe "libgcrypt"
include_recipe "libtasn"

packages = Array.new

case node[:lsb][:codename]
when "lucid", "precise"
  packages |= %w/
    libgnutls26
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
