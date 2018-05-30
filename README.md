<p align="center">
    <img src="https://github.com/trimstray/otseca/blob/master/doc/img/otseca_logo.png"
        alt="Master">
</p>

<h4 align="center">Open source security audit tool to search and dump system configuration</h4>

<p align="center">
  <a href="https://img.shields.io/badge/Branch-master-green.svg">
    <img src="https://img.shields.io/badge/Branch-master-green.svg"
        alt="Branch">
  </a>
  <a href="https://img.shields.io/badge/Version-v1.0.0-lightgrey.svg">
    <img src="https://img.shields.io/badge/Version-v1.0.0-lightgrey.svg"
        alt="Version">
  </a>
  <a href="https://travis-ci.org/trimstray/otseca">
    <img src="https://travis-ci.org/trimstray/otseca.svg?branch=master"
        alt="Travis-CI">
  <a href="http://www.gnu.org/licenses/">
    <img src="https://img.shields.io/badge/license-GNU-blue.svg"
        alt="License">
  </a>
</p>

<p align="center">
   <a href="#description">Description</a>
 • <a href="#how-to-use">How To Use</a>
 • <a href="#requirements">Requirements</a>
 • <a href="#reports">Reports</a>
 • <a href="#other">Other</a>
 • <a href="#license">License</a>
 • <a href="https://github.com/trimstray/otseca/wiki">Wiki</a>
</p>

<div align="center">
  <sub>Created by
  <a href="https://twitter.com/trimstray">trimstray</a> and
  <a href="https://github.com/trimstray/otseca/graphs/contributors">
    contributors
  </a>
</div>

<br>

## Description

**<u>Otseca</u>** is a open source security audit tool to search and dump system configuration.

For more information, see See **<a href="https://github.com/trimstray/otseca/wiki">wiki</a>**.

## How To Use

It's simple:

```bash
# Clone this repository
git clone https://github.com/trimstray/otseca

# Go into the repository
cd otseca

# Install
./setup.sh install

# Run the app
otseca
```

> * symlink to `bin/otseca` is placed in `/usr/local/bin`
> * man page is placed in `/usr/local/man/man8`

## Requirements

This tool working with:

- **GNU/Linux** or **BSD** (testing on Debian, CentOS and FreeBSD)
- **Bash** (testing on 4.4.19)

Also you will need **root access**.

## Reports

**Otseca** generates reports in html format.

<p align="center">
    <img src="https://github.com/trimstray/otseca/blob/master/doc/img/otseca_lsmod_output.png"
        alt="Master">
</p>

<p align="center">
    <img src="https://github.com/trimstray/otseca/blob/master/doc/img/otseca_sysctl_output.png"
        alt="Master">
</p>

## Other

### Contributing

See **[this](CONTRIBUTING.md)**.

### Project architecture

See **<a href="https://github.com/trimstray/otseca/wiki/Project-architecture">this</a>**.

## License

GPLv3 : <http://www.gnu.org/licenses/>

**Free software, Yeah!**
