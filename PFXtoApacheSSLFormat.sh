#!/bin/bash
# PFXtoApacheSSLFormat.sh
# Converts SSL Certs from Windows Server .pfx format to standard Apache2 .key and .cer format

# Run command in "PFXtoApacheSSLFormat.sh <cert.pfx> <desired output name>" format

if [[ $1 == -h ]] ; then
  printf "Run command in PFXtoApacheSSLFormat.sh <cert.pfx> <desired output name> format
  "
  elif [[ $1 == --help ]] ; then 
  printf "Run command in PFXtoApacheSSLFormat.sh <cert.pfx> <desired output name> format
  "
  else
    openssl pkcs12 -in $1 -clcerts -nokeys -out $2.cer
    openssl pkcs12 -in $1 -nocerts -nodes  -out $2.key
fi
