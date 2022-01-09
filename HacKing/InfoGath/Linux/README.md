# Linux Sysinfo 

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/5a3b5bbe370e409a96a0de70b1c95c31)](https://www.codacy.com/app/marshki/linux_sysinfo?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=marshki/bash_sys_info&amp;utm_campaign=Badge_Grade)
[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://GitHub.com/Naereen/StrapDown.js/graphs/commit-activity)
[![made-with-bash](https://img.shields.io/badge/Made%20with-Bash-1f425f.svg)](https://www.gnu.org/software/bash/)
[![MIT licensed](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/hyperium/hyper/master/LICENSE)
[![Open Source Love svg3](https://badges.frapsoft.com/os/v3/open-source.svg?v=103)](https://github.com/ellerbrock/open-source-badges/)

Bash script extracts useful information from a `GNU/Linux` host using a menu-driven interface.
This script builds upon *grabsysinfo.sh* attributed to Vivek Gite circa 2007.09.12.

Test status: 

Operating System | Tested to Work  
-----------------|---------------
Centos 7         | Y
Debian 8         | Y 
Debian 9         | Y 
Fedora 26        | N
Fedora 27        | N
Ubuntu 16.04     | Y 
Ubuntu 18.04     | Y

# Getting Started 

First, see: [REQUIREMENTS.md](https://github.com/marshki/linux_sysinfo/blob/master/REQUIREMENTS.md). 

Then, for the whole enchillada, run: 

`sudo bash linux_sysinfo.sh`,  

which will present a text-based menu from which you can make a selection and receive output:
 
Debian 8     | Debian 8 pi 
----------   | -----------
![Alt text](https://github.com/marshki/linux_sysinfo/blob/master/docs/screen_grab.png "Deb_think") | ![Alt text](https://github.com/marshki/linux_sysinfo/blob/master/docs/screen_grab_2.png "Deb_pi")

**For sysadmins:**

Make this script accessible to all users by placing it in: `/`; 

create a symbolic link for it: 

`ln -s /linux_sysinfo.sh /usr/bin/sysinfo`; 

set the executable bit on the file:

`chmod +x /linux_sysinfo.sh`;   

then call it:

`sysinfo`.  
 
# TODO

- [ ] Optimize `file_hogs` & `dir_hogs` for seek time   

- [X] Test on: Fedora 26 & 27, Ubuntu 18.04.   

- [ ] Refactor program paying attention to [ShellCheck](https://www.shellcheck.net)

- [ ] Bash style guide. 

- [ ] Automated unit testing? 

# History 

First commit 2016.10.07

Code review 2017.11.05 

# License 

[MIT license](https://opensource.org/licenses/MIT). 'Nuff said. 

# Acknowledgments 

Vivek Gite attributed author of `grabsysinfo.sh` from which this project builds upon. 
