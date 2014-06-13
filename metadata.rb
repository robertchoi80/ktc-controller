name 'ktc-controller'
version '1.0.5'
%w(centos ubuntu).each do |os|
  supports os
end

depends 'ktc-identity'
depends 'ktc-block-storage'
depends 'ktc-network'
depends 'ktc-compute'
depends 'ktc-dashboard'
