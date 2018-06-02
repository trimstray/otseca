<p align="center">
    <img src="https://github.com/trimstray/otseca/blob/master/doc/img/otseca_logo.png"
        alt="Master">
</p>

<h4 align="center">Open source security auditing tool to search and dump system configuration.</h4>

<p align="center">
  <a href="https://img.shields.io/badge/Branch-master-green.svg">
    <img src="https://img.shields.io/badge/Branch-master-green.svg"
        alt="Branch">
  </a>
  <a href="https://img.shields.io/badge/Version-v1.0.2-lightgrey.svg">
    <img src="https://img.shields.io/badge/Version-v1.0.2-lightgrey.svg"
        alt="Version">
  </a>
  <a href="https://img.shields.io/badge/Commands-142-orange.svg">
    <img src="https://img.shields.io/badge/Commands-142-orange.svg"
        alt="Commands">
  </a>
  <a href="https://travis-ci.org/trimstray/otseca">
    <img src="https://travis-ci.org/trimstray/otseca.svg?branch=master"
        alt="Travis-CI">
  <a href="http://www.gnu.org/licenses/">
    <img src="https://img.shields.io/badge/license-GNU-blue.svg"
        alt="License">
  </a>
</p>

<div align="center">
   <a href="#description">Description</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
   <a href="#requirements">Requirements</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
   <a href="#output-example">Output example</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
   <a href="#reports">Reports</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
   <a href="#other">Other</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
   <a href="#license">License</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
   <a href="https://github.com/trimstray/otseca/wiki">Wiki</a>
</div>

<div align="center">
  <sub>Created by
  <a href="https://twitter.com/trimstray">trimstray</a> and
  <a href="https://github.com/trimstray/otseca/graphs/contributors">
    contributors
  </a>
</div>

<br>

<p align="center">
    <img src="/doc/img/otseca_short_desc.png"
        alt="Master">
</p>

## Description

**<u>Otseca</u>** is a open source security auditing tool to search and dump system configuration. It allows you to generate reports in **HTML** or **RAW-HTML** formats.

For more information, see **<a href="https://github.com/trimstray/otseca/wiki">wiki</a>**.

## Requirements

This tool working with:

- **GNU/Linux** or **BSD** (testing on Debian, CentOS and FreeBSD)
- **Bash** (testing on 4.4.19)

Also you will need **root access**.

## Output example

<p align="center">
    <img src="https://github.com/trimstray/otseca/blob/master/doc/img/otseca_output.png"
        alt="Master">
</p>

## Reports

**Otseca** generates reports in html (js, css and other) or raw-html (pure html) formats.

> Default path for reports is `{project}/data/output` directory.

### Main page (index.html)

It's the main file which contains a list of reports such as system or network.

<p align="center">
    <img src="https://github.com/trimstray/otseca/blob/master/doc/img/otseca_index_output.png"
        alt="Master">
</p>

### Tasks reports

The report that can be performed consists of the following sections (stacks):

- **system** - dump info from system commands, eg. `sysctl -a`, (output file: system.all.log.html)
- **filesystem** - dump info about files and directories layer, eg. `cat /etc/hosts.allow`, (output file: filesystem.all.log.html)
- **permissions**  - dump info about permissions, eg. `find / -nouser -o -nogroup -print`, (output file: permissions.all.log.html)
- **services** - dump info about system services, eg. `ntpq -p`, (output file: services.all.log.html)
- **network** - dump info from network layer, eg. `netstat -tunap`, (output file: network.all.log.html)
- **other** - all other, also user tasks, eg. `yum list installed`, (output file: other.all.log.html)

HTML reports consist of the following blocks:

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
