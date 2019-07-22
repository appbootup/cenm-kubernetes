#!/bin/sh

set -eux

# Clean any old certs
rm -f ./pki/*.jks

# Build PKI certs
cd ../
cd pki
java -jar pkitool.jar cert-hierarchy-generator --config-file pkitool.conf
cd ..

cp pki/caKeyStore.jks volumes/signer/
cp pki/certificateStore.jks volumes/signer/

cp pki/caKeyStore.jks volumes/identity-manager/
cp pki/certificateStore.jks volumes/identity-manager/

cp pki/caKeyStore.jks volumes/netmap/
cp pki/certificateStore.jks volumes/netmap/

cp pki/networkRootTrustStore.jks volumes/notary/
cp pki/networkRootTrustStore.jks volumes/notary/
cp pki/networkRootTrustStore.jks volumes/parties/PartyA/
cp pki/networkRootTrustStore.jks volumes/parties/PartyB/
