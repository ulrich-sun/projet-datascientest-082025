#!/bin/bash
sudo apt-get update -y
curl -sfL https://get.k3s.io | sh -
sudo  chmod 644 /etc/rancher/k3s/k3s.yaml
export KUBECONFIG=/etc/rancher/k3s/k3s.yaml
sudo systemctl enable k3s
sudo systemctl start k3s
echo "K3s installation completed. You can now use kubectl to manage your cluster."