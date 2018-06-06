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
  <a href="https://img.shields.io/badge/Version-v1.0.3-lightgrey.svg">
    <img src="https://img.shields.io/badge/Version-v1.0.3-lightgrey.svg"
        alt="Version">
  </a>
  <a href="https://img.shields.io/badge/Commands-138-orange.svg">
    <img src="https://img.shields.io/badge/Commands-138-orange.svg"
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
   <a href="#introduction">Introduction</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
   <a href="#description">Description</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
   <a href="#requirements">Requirements</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
   <a href="#output">Output</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
   <a href="#parameters">Parameters</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
   <a href="#reports">Reports</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
   <a href="#other">Other</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
   <a href="#license">License</a>
</div>

<div align="center">
  <sub>Created by
  <a href="https://twitter.com/trimstray">trimstray</a> and
  <a href="https://github.com/trimstray/otseca/graphs/contributors">
    contributors
  </a>
</div>

<br>

***

<br>

## Introduction

<p align="center">
    <img src="/doc/img/otseca_short_desc.png"
        alt="Master">
</p>

> **Hint 1**  
> If you do not want the script to be stopped after encountering errors add `--ignore-failed` script param.

> **Hint 2**  
> Only selected tasks using the `--tasks <task_1, task_2, task_n>` script param.

## Description

**<u>Otseca</u>** is a open source security auditing tool to search and dump system configuration. It allows you to generate reports in **HTML** or **RAW-HTML** formats.

The basic goal is to get as much information about the scanned system as possible for later analysis. **<u>Otseca</u>** contains many predefined commands, however, nothing prevents you from creating your own according to your needs. In addition, it automates the entire information gathering process.

After the scan finishes, a report is generated to examine specific nooks of the system.

## Requirements

This tool working with:

- **GNU/Linux** (testing on Debian and CentOS)
- **Bash** (testing on 4.4.19)

Also you will need **root access**.

## Output

An exemplary result of the process of collecting information from the local system:

<p align="center">
    <img src="https://github.com/trimstray/otseca/blob/master/doc/img/otseca_output.png"
        alt="Master">
</p>

## Parameters

Below is a list of available options:

```bash
  Usage:
    otseca <option|long-option>

  Examples:
    otseca --help
    otseca --format html
    otseca --format html --ignore-failed
    otseca --format raw-html --tasks system,network

  Options:
        --help                      show this message
     -f|--format <key>              set output format (key: html/raw-html)
     -t|--tasks <key>               set specific task to do
                                    (key: system, fs, permissions, services, network, other)
        --show-errors               show stderr to output
        --ignore-failed             do not exit with nonzero on commands failed
```

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
