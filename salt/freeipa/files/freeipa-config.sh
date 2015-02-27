#!/bin/bash
ipaclient=/etc/ipa/default.conf

if [ ! -f $ipaclient ]; then
  ipa-client-install --domain=psapps.emcrubicon.com --server=ipa01.psapps.emcrubicon.com --realm=PSAPPS.EMCRUBICON.COM --mkhomedir -w secret —-no-ntp --unattended
  sleep 5
  echo "sudoers: files sss" >> /etc/nsswitch.conf
  sed -i -e 's/\(services.*\)/\1, sudo/' /etc/sssd/sssd.conf
  sed -i -e "\$asession    optional    pam_mkhomedir.so" /etc/pam.d/common-session
  sleep 2
  reboot
else
  echo "FreeIPA Client is good to go"
fi
