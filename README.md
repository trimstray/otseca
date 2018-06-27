<p align="center">
    <img src="https://github.com/trimstray/otseca/blob/master/doc/img/otseca_logo.png"
        alt="Master">
</p>

<h4 align="center">Open source security auditing tool to search and dump system configuration.</h4>

<br>

<p align="center">
  <a href="https://github.com/trimstray/otseca/tree/master">
    <img src="https://img.shields.io/badge/Branch-master-green.svg?longCache=true&style=for-the-badge"
        alt="Branch">
  </a>
  <a href="https://github.com/trimstray/otseca/releases/tag/v1.0.5">
    <img src="https://img.shields.io/badge/Version-v1.0.5-lightgrey.svg?longCache=true&style=for-the-badge"
        alt="Version">
  </a>
  <a href="https://img.shields.io/badge/Commands-150-orange.svg">
    <img src="https://img.shields.io/badge/Commands-150-orange.svg?longCache=true&style=for-the-badge"
        alt="Commands">
  </a>
  <a href="https://travis-ci.org/trimstray/otseca">
    <img src="https://img.shields.io/travis/trimstray/otseca.svg?longCache=true&style=for-the-badge"
        alt="Travis-CI">
  <a href="http://www.gnu.org/licenses/">
    <img src="https://img.shields.io/badge/license-GNU-blue.svg?longCache=true&style=for-the-badge"
        alt="License">
  </a>
</p>

<div align="center">
   <a href="#introduction">Introduction</a>&nbsp;&nbsp;|&nbsp;&nbsp;
   <a href="#description">Description</a>&nbsp;&nbsp;|&nbsp;&nbsp;
   <a href="#requirements">Requirements</a>&nbsp;&nbsp;|&nbsp;&nbsp;
   <a href="#output">Output</a>&nbsp;&nbsp;|&nbsp;&nbsp;
   <a href="#parameters">Parameters</a>&nbsp;&nbsp;|&nbsp;&nbsp;
   <a href="#reports">Reports</a>&nbsp;&nbsp;|&nbsp;&nbsp;
   <a href="#how-it-works">How it works</a>&nbsp;&nbsp;|&nbsp;&nbsp;
   <a href="#other">Other</a>
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

## Introduction

### The main goal

The main assumption of creating this tool was **easier** and **faster** delivery of **commands sets** to be performed on customer environments. As a result of such a scan I wanted to get the most useful information about system components that will be subjected to penetration tests and audits at a later time.

### For whom

**Otseca** facilitates collection of many important information about a given system.

It is useful for:

<p>
&nbsp;&nbsp;&nbsp;&nbsp;:ballot_box_with_check: pentesters<br>
&nbsp;&nbsp;&nbsp;&nbsp;:ballot_box_with_check: security researchers<br>
&nbsp;&nbsp;&nbsp;&nbsp;:ballot_box_with_check: system administrators<br>
&nbsp;&nbsp;&nbsp;&nbsp;:ballot_box_with_check: security professionals<br>
&nbsp;&nbsp;&nbsp;&nbsp;:ballot_box_with_check: hackers<br>
</p>

### How To Use

It's simple:

```bash
# Clone this repository
git clone https://github.com/trimstray/otseca

# Go into the repository
cd otseca

# Install
./setup.sh install

# Run the app
otseca --ignore-failed --tasks system,network --output /tmp/report
```

> * symlink to `bin/otseca` is placed in `/usr/local/bin`
> * man page is placed in `/usr/local/man/man8`

> **Hint 1**  
> If you do not want the script to be stopped after encountering errors add `--ignore-failed` script param.

> **Hint 2**  
> Only selected tasks using the `--tasks <task_1,task_2,task_n>` script param.

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
                                    (key: system, kernel, permissions, services, network, distro, external)
     -o|--output <path>             set path to output directory report
        --show-errors               show stderr to output
        --ignore-failed             do not exit with nonzero on commands failed
```

## Reports

**Otseca** generates reports in html (js, css and other) or raw-html (pure html) formats.

> Default path for reports is `{project}/data/output` directory. If you want to change it, add the `--output <path>` option to call the script.

### Main page (index.html)

It's the main file which contains a list of reports such as system or network.

<p align="center">
    <img src="https://github.com/trimstray/otseca/blob/master/doc/img/otseca_index_output.png"
        alt="Master">
</p>

### Tasks reports

The report that can be performed consists of the following sections (stacks):

- **system** - dump info from system commands (output file: system.all.log.html)
- **kernel** - dump info about kernel params (output file: kernel.all.log.html)
- **permissions**  - dump info about permissions (output file: permissions.all.log.html)
- **services** - dump info about system services (output file: services.all.log.html)
- **network** - dump info from network layer (output file: network.all.log.html)
- **distro** - dump info about specific distribution (output file: distro.all.log.html)
- **external** - all external, also user tasks or included from `etc/` directory (output file: external.all.log.html)

HTML reports consist of the following blocks (example):

<p align="center">
    <img src="https://github.com/trimstray/otseca/blob/master/doc/img/otseca_service_output.png"
        alt="Master">
</p>

## How it works

### Tasks

**Otseca** divides his work into **tasks**. Each sets of tasks performs defined commands (eg. from the file `etc/otseca.conf`). By default six tasks are available: **system**, **kernel**, **permissions**, **services**, **network**, **distro** and **external**.

By default, all tasks are performed but you can specify them with the `--tasks` parameter giving one or many tasks as an argument. For example:

```bash
otseca --ignore-failed --tasks system,kernel
```

### Commands

They are actual **commands** executed from the configuration file grouped into tasks.

Here is an example of a network task containing several built-in commands:

```bash
NETWORK_STACK=(\

  "_exec hostname -f" \
  "_exec ifconfig -a" \
  "_exec iwconfig" \
  "_exec netstat -tunap" \
  "_exec netstat -rn" \
  "_exec iptables -nL -v" \
  "_exec iptables -nL -v -t nat" \
  "_exec iptables -S" \
  "_exec lsof -ni" \

)
```

### Submodules

**Submodules** are built-in functions that perform the commands described above. Here is submodules list:

- **_exec** - init standard commands, eg. `_exec ls -l /etc/rsyslog.conf`
- **_grep** - is responsible for searching for strings in files, eg. `_grep max_log_file /etc/audit/auditd.conf`
- **_stat** - collects information about files, eg. `_stat /etc/ssh/sshd_config`
- **_sysctl** - compares the values of the kernel parameters, eg. `_sysctl fs.suid_dumpable 1`
- **_systemctl** - checks the operation of services, eg. `_systemctl httpd`

### Output states

**Otseca** supports three output (response) states:

- **DONE** - informs that the command was executed correctly, most often it says that you did not find what you are looking for which is good information. The report is marked in **_green_**:

  * from console output:<p align="center">
    <img src="https://github.com/trimstray/otseca/blob/master/doc/img/otseca_uname_console_output.png"
        alt="Master"></p>
  * from report output:<p align="center">
    <img src="https://github.com/trimstray/otseca/blob/master/doc/img/otseca_uname_output.png"
        alt="Master"></p>

- **WARN** - informs that the command was not executed correctly (syntax error, no command, file not found etc.). The report is marked in **_yellow_**:

  * from console output:<p align="center">
    <img src="https://github.com/trimstray/otseca/blob/master/doc/img/otseca_sestatus_console_output.png"
        alt="Master"></p>
  * from report output:<p align="center">
    <img src="https://github.com/trimstray/otseca/blob/master/doc/img/otseca_sestatus_output.png"
        alt="Master"></p>

- **TRUE** - informs that the command was executed correctly and found what we were looking for, e.g. too wide permissions for the file `/etc/sudoers`. The report is marked in **_red_**:

  * from console output:<p align="center">
    <img src="https://github.com/trimstray/otseca/blob/master/doc/img/otseca_systemctl_rsync_console_output.png"
        alt="Master"></p>
  * from report output:<p align="center">
    <img src="https://github.com/trimstray/otseca/blob/master/doc/img/otseca_systemctl_rsync_output.png"
        alt="Master"></p>

## Other

### Contributing

See **[this](CONTRIBUTING.md)**.

### Project architecture

See **<a href="https://github.com/trimstray/otseca/wiki/Project-architecture">this</a>**.

## License

GPLv3 : <http://www.gnu.org/licenses/>

**Free software, Yeah!**
