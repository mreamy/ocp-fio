I/O Benchmark with fio

== Output of ./configure

```
+ cd fio-fio-2.16
+ ./configure
Operating system              Linux
CPU                           x86_64
Big endian                    no
Compiler                      gcc
Cross compile                 no

Static build                  no
Wordsize                      64
zlib                          yes
Linux AIO support             no
POSIX AIO support             yes
POSIX AIO support needs -lrt  yes
POSIX AIO fsync               yes
Solaris AIO support           no
__sync_fetch_and_add          yes
libverbs                      no
rdmacm                        no
Linux fallocate               yes
POSIX fadvise                 yes
POSIX fallocate               yes
sched_setaffinity(3 arg)      yes
sched_setaffinity(2 arg)      no
clock_gettime                 yes
CLOCK_MONOTONIC               yes
CLOCK_MONOTONIC_RAW           yes
CLOCK_MONOTONIC_PRECISE       no
clockid_t                     yes
gettimeofday                  yes
fdatasync                     yes
sync_file_range               yes
EXT4 move extent              yes
Linux splice(2)               yes
GUASI                         no
Fusion-io atomic engine       no
libnuma                       no
strsep                        yes
strcasestr                    yes
strlcat                       no
getopt_long_only()            yes
inet_aton                     yes
socklen_t                     yes
__thread                      yes
RUSAGE_THREAD                 yes
SCHED_IDLE                    yes
TCP_NODELAY                   yes
Net engine window_size        yes
TCP_MAXSEG                    yes
RLIMIT_MEMLOCK                yes
pwritev/preadv                yes
pwritev2/preadv2              no
IPv6 helpers                  yes
Rados Block Device engine     no
rbd blkin tracing             no
setvbuf                       yes
Gluster API engine            no
s390_z196_facilities          no
HDFS engine                   no
MTD                           yes
NVML libpmemblk engine        no
NVM Device Dax engine        no
lex/yacc for arithmetic       no
getmntent                     yes
getmntinfo                    no
Static Assert                 yes
bool                          yes
```

