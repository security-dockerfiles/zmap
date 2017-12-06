About
-----

Based on Alpine Linux, starts as a non-root user

## Usage

### Official ZMap

```
docker run -it --rm --net=host ilyaglow/zmap -p80 8.8.8.0/24
```

### ZMapv6 fork

Utilizes a [fork](https://github.com/tumi8/zmap) capable to scan IPv6 hosts

```
docker run -it --rm --net=host -v IPv6-TARGETS.txt:/targets.txt ilyaglow/zmap:ipv6 --ipv6-target-file /targets.txt --ipv6-source-ip YOUR-IPv6-ADDRESS -p80
```
