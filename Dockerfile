FROM registry.access.redhat.com/rhel7:latest

# added --skip-broken  because of
# --> Running transaction check
# ---> Package hwdata.x86_64 0:0.252-8.1.el7 will be installed
# ---> Package systemd-sysv.x86_64 0:219-19.el7_2.12 will be installed
# --> Processing Dependency: systemd = 219-19.el7_2.12 for package: systemd-sysv-219-19.el7_2.12.x86_64
# --> Finished Dependency Resolution
# Error: Package: systemd-sysv-219-19.el7_2.12.x86_64 (rhel-7-server-rpms)
#            Requires: systemd = 219-19.el7_2.12
#            Installed: systemd-219-19.el7_2.13.x86_64 (@anaconda/7.2)
#                   systemd = 219-19.el7_2.13

ENV fio_version=2.16

RUN set -x \
  && yum -y update \
  && yum -y --skip-broken install socat tar zlib-devel \
  && yum -y --skip-broken  groupinstall 'Development Tools' \
  && cd /tmp \
  && curl -LsSO https://github.com/axboe/fio/archive/fio-${fio_version}.tar.gz \
  && tar xfvz fio-${fio_version}.tar.gz  \
  && rm fio-${fio_version}.tar.gz\
  && cd fio-fio-${fio_version} \
  && ./configure \
  && make \
  && make install \
  && yum -y groupremove 'Development Tools' \
  && yum -y erase zlib-devel \
  && yum -y clean all

USER 1001

#CMD ["/bin/sh"]
CMD ["/bin/sh","-c","while true; do echo hello world; sleep 30; done"]