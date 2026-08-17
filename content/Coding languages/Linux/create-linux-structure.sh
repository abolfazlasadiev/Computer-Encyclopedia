#!/usr/bin/env bash

set -e

declare -A sections

sections["01. Linux Fundamentals"]="Linux چیست؟|تاریخچه Unix و Linux|Kernel|Distribution (Distro)|GNU-Linux|Shell|Terminal|CLI vs GUI|Linux Architecture"

sections["02. Linux Distributions"]="Debian|Ubuntu|Fedora|Arch Linux|RHEL|openSUSE|Alpine Linux|Distribution Families|Debian-based|Red Hat-based|Arch-based"

sections["03. Installation & Boot"]="Disk Partitioning|Filesystems|UEFI-BIOS|Bootloader|GRUB|Kernel Boot|init-systemd|Multi-boot"

sections["04. Filesystem"]="Filesystem Hierarchy|Root|Bin|Boot|Dev|Etc|Home|Lib|Media|Mnt|Opt|Proc|Root Directory|Run|Sbin|Srv|Sys|Tmp|Usr|Var|Files|Directories|Paths|Absolute Path|Relative Path|Hidden Files|Links|Hard Link|Symbolic Link|File Types"

sections["05. Essential Commands"]="pwd|ls|cd|mkdir|touch|cp|mv|rm|rmdir|cat|less|head|tail|file|stat|find|locate"

sections["06. Text Processing"]="grep|sed|awk|cut|sort|uniq|tr|wc|diff|tee|xargs"

sections["07. Shell"]="Bash|Shell Types|Shell Variables|Environment Variables|PATH|Aliases|Command History|Quoting|Single Quotes|Double Quotes|Escape Character|Wildcards|Asterisk|Question Mark|Character Classes|Command Substitution"

sections["08. Input & Output"]="stdin|stdout|stderr|Redirection|Output Redirection|Append Redirection|Input Redirection|Error Redirection|Pipes"

sections["09. Users & Groups"]="Users|Groups|Root User|passwd File|shadow File|group File|useradd|usermod|userdel|groupadd|passwd|su|sudo"

sections["10. Permissions"]="Read|Write|Execute|User|Group|Others|chmod|chown|chgrp|umask|Numeric Permissions|400|600|644|755|777|Special Permissions|SUID|SGID|Sticky Bit"

sections["11. Processes"]="Process چیست؟|PID|PPID|Process States|ps|top|htop|pstree|jobs|bg|fg|nohup|kill|pkill|nice|renice|Signals"

sections["12. Package Management"]="Packages|Repositories|APT|apt update|apt upgrade|apt install|apt remove|apt purge|apt search|dpkg|Snap|Flatpak|Package Dependency"

sections["13. System Management"]="systemd|systemctl|Services|Targets|Startup|Shutdown|Reboot|journalctl|Logs"

sections["14. Hardware"]="CPU|RAM|Disk|GPU|USB|PCI|Kernel Modules|Drivers|lscpu|lsblk|lspci|lsusb|free|dmesg"

sections["15. Storage"]="HDD|SSD|NVMe|Partitions|Mounting|mount|umount|fstab|Disk Usage|df|du|Filesystems|ext4|XFS|Btrfs|FAT32|Swap"

sections["16. Networking"]="Network Interface|MAC Address|IP Address|IPv4|IPv6|Subnet|Gateway|DNS|DHCP|Routing|Ports|Sockets|ip|ping|traceroute|ss|curl|wget|dig|NetworkManager"

sections["17. Remote Access"]="SSH|ssh|ssh-keygen|ssh-agent|scp|sftp|rsync|SSH Configuration"

sections["18. Archives & Compression"]="tar|gzip|gunzip|zip|unzip|xz|bzip2|Backup"

sections["19. Editors"]="nano|vim|vi|Emacs"

sections["20. Documentation"]="man|info|help|apropos|whatis|usr-share-doc"

sections["21. Environment & Configuration"]="Environment Variables|etc-profile|bashrc|profile|Dotfiles|Locale|Timezone|hostname"

sections["22. Scheduling"]="cron|crontab|at|systemd timers|Scheduled Jobs"

sections["23. Logging & Monitoring"]="var-log|syslog|journal|journalctl|top|htop|uptime|free|vmstat|iostat|Monitoring"

sections["24. Security"]="Authentication|Authorization|File Permissions|sudo|SSH Security|Firewall|nftables|ufw|SELinux|AppArmor|Updates|Security Logs|Principle of Least Privilege"

sections["25. Bash Scripting"]="Shebang|Variables|Arguments|Conditions|if|elif|case|Loops|for|while|until|Functions|Arrays|Exit Codes|Input Handling|Error Handling|Automation"

sections["26. Linux Development"]="GCC|Make|C-C++|Python|Git|Libraries|Shared Libraries|Static Libraries|Environment Setup|Build Systems"

sections["27. Kernel"]="Linux Kernel|Kernel Space|User Space|System Calls|Kernel Modules|Drivers|proc|sys|Kernel Parameters|Kernel Compilation"

sections["28. Virtualization & Containers"]="Virtual Machines|KVM|QEMU|Containers|Docker|Podman|LXC|Images|Volumes|Networks|Namespaces-cgroups"

sections["29. Linux Administration"]="User Management|Storage Management|Network Management|Service Management|Security|Monitoring|Backup|Recovery|Troubleshooting|Automation"

sections["30. Advanced Linux"]="Kernel Internals|System Calls|Process Scheduling|Memory Management|Virtual Memory|Networking Internals|Filesystem Internals|Device Drivers|eBPF|Performance Tuning|Linux Security|System Debugging"


for section in "${!sections[@]}"; do
    mkdir -p "$section"

    IFS='|' read -ra files <<< "${sections[$section]}"

    for file in "${files[@]}"; do
        touch "$section/$file.md"
    done
done

echo "✓ Linux knowledge base created successfully."
