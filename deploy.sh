
WALLETADDRESS="aleo1rypxcqwa5x8tms0keqgdfyfcrjkuj85g8uvva40v6gcwfjcjygps9jrvcp"
PRIVATEKEY="APrivateKey1zkpCQijdQ562or3W4cuqsvhh59BTMGNdkipR48VmYsbTir2"

APPNAME="aleo_deploy_workshop"
PATHTOAPP=$(realpath -q $APPNAME)

RECORD="{
  owner: aleo1rypxcqwa5x8tms0keqgdfyfcrjkuj85g8uvva40v6gcwfjcjygps9jrvcp.private,
  microcredits: 50000000u64.private,
  _nonce: 6802879695888099684989928042125298415569114543997448030494649787750954491831group.public
}"

cd .. && snarkos developer deploy "${APPNAME}.aleo" --private-key "${PRIVATEKEY}" --query "https://vm.aleo.org/api" --path "./${APPNAME}/build/" --broadcast "https://vm.aleo.org/api/testnet3/transaction/broadcast" --fee 1000000 --record "${RECORD}"``
