# This script is for Ubuntu Ver18.04.
#!/bin/sh

PATH_DAPPS=~/dapps
PATH_TRUFFLE=$PATH_DAPPS/deploy/by_truffle
cd $(dirname $0)
PATH_CURRENT=$PWD
PATH_SETUP_TRUFFLE=$PATH_CURRENT/by_truffle_setup
PATH_LOOM=$PATH_DAPPS/loomNetwork

echo "\nDone?"
echo "Set up node.js and npm."
echo " - sh ./zombietimes/setup0040_nodeJs/ubuntuCmd_setupNodeJs.sh"
echo ""
echo "[Enter] to continue."
echo "\n"
read Wait;

echo "\n<Setup>"
echo "Set up truffle."
echo "\n"
mkdir -p $PATH_TRUFFLE
cd $PATH_TRUFFLE
sudo npm install -g truffle

echo "\n<Setup>"
echo "Set up truffle for Loom Network."
echo "\n"
cd $PATH_TRUFFLE
truffle init
cp -rf $PATH_SETUP_TRUFFLE/* $PATH_TRUFFLE
ls
npm init
npm install loom-js --save
npm install loom-truffle-provider --save

echo "\n<Setup>"
echo "Generate the private key for Loom Network."
echo "\n"
cd $PATH_TRUFFLE
$PATH_LOOM/loom genkey -k privKey_loomLocal -a pubKey_loomLocal


