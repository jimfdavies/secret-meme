# Initially using boot2docker on VirtualBox
# After booting this VM, setup port forwarding 2222:22

ssh docker@127.0.0.1 -p 2222
# tcuser
git clone https://github.com/jimfdavies/secret-meme.git
cd secret-meme
git checkout master
