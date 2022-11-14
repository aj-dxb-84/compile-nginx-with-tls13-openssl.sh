# compile-nginx-with-tls13-openssl.sh
Compile script for TLS 1.3 support on RHEL/CentOS 7 version: nginx-1.22.1 openssl-1.1.1s

# in your VM create a working directory
- `sudo mkdir /workspace`
- `cd /workspace`
- `git clone https://github.com/aj-dxb-84/compile-nginx-with-tls13-openssl.sh.git`
- cd compile-nginx-with-tls13-openssl.sh
- chmod 755 compile-openssl-1.1.sh compile-nginx-with-tls13.sh nginx.service
- ./compile-openssl-1.1.sh
