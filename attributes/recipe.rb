#
# controller run list requirements
#
default[:controller][:includes] = [] 

# selinux permissive when on rhelish things

default[:controller][:includes].concat %w{
 ktc-identity
 ktc-block-storage
 ktc-network
 ktc-compute::compute-api
 ktc-dashboard
}
