Puppet::Type.newtype(:rabbitmq_vhost) do
  desc 'manages rabbitmq vhosts'

  ensurable do
    defaultto(:present)
    newvalue(:present) do
      provider.create
    end
    newvalue(:absent) do
      provider.destroy
    end
  end

  newparam(:name, :namevar => true) do
    'name of the vhost to add'
    newvalues(/^\S+$/)
  end

  newparam(:user) do
    'The user to grant admin permissions to'
    newvalues(/^\S+$/)
  end

  autorequire(:service) { 'rabbitmq-server' }

end
