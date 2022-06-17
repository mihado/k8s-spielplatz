Vagrant.configure("2") do |config|

  base_box = "generic/ubuntu2004"

  # master node
  config.vm.define :node0 do |node0|
    node0.vm.hostname = "k8s-node0"
    node0.vm.box = base_box

    node0.vm.provider :libvirt do |domain|
      domain.cpus = 2
      domain.memory = 2048
    end

    node0.vm.network :public_network, mode: "bridge", type: "bridge", dev: "br2",
      mac: "5c:b4:cb:99:62:a0"

    node0.vm.provision "shell", path: "./provision.sh"
  end
  # master node

  # node1
  config.vm.define :node1 do |node1|
    node1.vm.hostname = "k8s-node1"
    node1.vm.box = base_box

    node1.vm.provider :libvirt do |domain|
      domain.cpus = 2
      domain.memory = 2048
    end

    node1.vm.network :public_network, mode: "bridge", type: "bridge", dev: "br3",
      mac:"5c:b4:cb:99:62:a1"

    node1.vm.provision "shell", path: "./provision.sh"
  end
  # node1

  # node2
  config.vm.define :node2 do |node2|
    node2.vm.hostname = "k8s-node2"
    node2.vm.box = base_box

    node2.vm.provider :libvirt do |domain|
      domain.cpus = 2
      domain.memory = 2048
    end

    node2.vm.network :public_network, mode: "bridge", type: "bridge", dev: "br3",
      mac: "5c:b4:cb:99:62:a2"

    node2.vm.provision "shell", path: "./provision.sh"
  end
  # node2

end
