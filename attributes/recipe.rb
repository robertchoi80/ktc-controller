#
# Base run list requirements
#
default[:base][:includes] = [] 

# selinux permissive when on rhelish things
case platform_family
when "rhel"
  default[:base][:includes] << "selinux::permissive"
  default[:base][:includes] << "yum"
when "debian"
  default[:base][:includes] << "apt"
  if platform == "ubuntu"
    default[:base][:includes] << "ubuntu"
  end  
end

default[:base][:includes].concat %w{
 ktc-identity
 ktc-block-storage
 ktc-network
 ktc-compute::compute-api
 ktc-dashboard
}
