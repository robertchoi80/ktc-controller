#
# controller run list requirements
#

include_attribute 'openstack-compute'
default['openstack']['compute']['identity_service_chef_role'] = 'ktc-controller'

default[:controller][:includes] = []

# selinux permissive when on rhelish things

default[:controller][:includes].concat %w{
 ktc-identity
 ktc-block-storage
 ktc-network
 ktc-compute::compute_api
 ktc-dashboard
}
