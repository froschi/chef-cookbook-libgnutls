include_recipe "libtasn"

packages = %w/
  libgnutls26
/

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
