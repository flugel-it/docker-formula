join-swarm-{{ grains.host }}:
   cmd.run:
    - name: docker run -d --restart=always swarm join --advertise={{ grains.ipv4[1] }}:2375 etcd://10.20.5.30:2379/swarm
