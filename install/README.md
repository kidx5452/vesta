[VestaCP + PHP 7.3](https://github.com/pnduonghd/vesta)
==================================================

How to install (3 step)
----------------------------
Connect to your server as root via SSH
```bash
ssh root@your.server
```

Download the installation script:
```bash
curl -L -O 'https://raw.githubusercontent.com/kidx5452/vesta/master/install/vst-install-rhel.sh'
```
Run base

```bash
bash vst-install-rhel.sh --hostname SCapital --email support@scapital.com --nginx yes --phpfpm yes --apache no --named yes --remi yes --vsftpd yes --proftpd no --iptables yes --fail2ban no --quota no --exim no --dovecot no --spamassassin no --clamav no --softaculous yes --mysql yes --postgresql no
```
Runphalcon
```bash
curl -L -O 'https://raw.githubusercontent.com/kidx5452/vesta/master/install/install_base.sh' && bash install_base.sh
```


Then run full it:
```bash
bash vst-install-rhel.sh
```
