# Make binary executable
chmod +x argocd-linux-amd64

# Move binary to path
cp ./argocd-linux-amd64 /usr/local/bin/argocd

# Test installation
argocd version
