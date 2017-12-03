About
-----

Based on Alpine Linux, starts as a non-root user

## Usage

### Official ZMap

```
docker run -it --rm --net=host ilyaglow/zmap -p80 8.8.8.0/24
```

### ZMapv6 fork

_TO BE AVAILABLE_

Utilizes a [fork](https://github.com/tumi8/zmap) capable to scan IPv6 hosts

```
docker run -it --rm --net=host ilyaglow/zmap:v6 -p 80 9.9.9.0/24
```
