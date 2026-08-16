```text
# Computer Networks

├── 1. Networking Fundamentals
│   ├── Definition of a Network
│   ├── Network Goals
│   │   ├── Resource Sharing
│   │   ├── Communication
│   │   ├── Availability
│   │   └── Scalability
│   ├── Types of Networks
│   │   ├── Personal Area Network (PAN)
│   │   ├── Local Area Network (LAN)
│   │   ├── Campus Area Network (CAN)
│   │   ├── Metropolitan Area Network (MAN)
│   │   ├── Wide Area Network (WAN)
│   │   ├── Storage Area Network (SAN)
│   │   └── Internet
│   ├── Network Topologies
│   │   ├── Bus
│   │   ├── Star
│   │   ├── Ring
│   │   ├── Mesh
│   │   ├── Tree
│   │   └── Hybrid
│   ├── Transmission Media
│   │   ├── Twisted Pair
│   │   ├── Coaxial Cable
│   │   ├── Fiber Optic
│   │   ├── Radio
│   │   ├── Wi-Fi
│   │   ├── Bluetooth
│   │   ├── Infrared
│   │   └── Satellite
│   └── Network Devices
│       ├── Network Interface Card (NIC)
│       ├── Hub
│       ├── Bridge
│       ├── Switch
│       ├── Router
│       ├── Gateway
│       ├── Modem
│       ├── Firewall
│       ├── Wireless Access Point (AP)
│       └── Load Balancer

├── 2. Reference Models
│   ├── OSI Model
│   │   ├── Physical Layer
│   │   ├── Data Link Layer
│   │   ├── Network Layer
│   │   ├── Transport Layer
│   │   ├── Session Layer
│   │   ├── Presentation Layer
│   │   └── Application Layer
│   ├── TCP/IP Model
│   │   ├── Link Layer
│   │   ├── Internet Layer
│   │   ├── Transport Layer
│   │   └── Application Layer
│   ├── Encapsulation
│   ├── Decapsulation
│   ├── Protocol Data Unit (PDU)
│   └── OSI vs. TCP/IP Comparison

├── 3. Physical Layer
│   ├── Signals
│   │   ├── Analog
│   │   └── Digital
│   ├── Bandwidth
│   ├── Data Rate
│   ├── Noise
│   ├── Attenuation
│   ├── Modulation
│   ├── Multiplexing
│   │   ├── Frequency Division Multiplexing (FDM)
│   │   ├── Time Division Multiplexing (TDM)
│   │   └── Wavelength Division Multiplexing (WDM)
│   └── Transmission Media

├── 4. Data Link Layer
│   ├── Framing
│   ├── Addressing
│   ├── MAC Address
│   ├── Error Detection
│   │   ├── Parity
│   │   ├── Checksum
│   │   └── Cyclic Redundancy Check (CRC)
│   ├── Error Correction
│   │   └── Hamming Code
│   ├── Flow Control
│   ├── Ethernet
│   │   ├── Ethernet Frame
│   │   ├── CSMA/CD
│   │   └── Switching
│   ├── VLAN
│   ├── Spanning Tree Protocol (STP)
│   ├── Point-to-Point Protocol (PPP)
│   ├── Address Resolution Protocol (ARP)
│   └── Dynamic Host Configuration Protocol (DHCP)

├── 5. Network Layer
│   ├── IPv4
│   │   ├── Header
│   │   ├── Addressing
│   │   ├── Address Classes
│   │   ├── CIDR
│   │   ├── Subnetting
│   │   ├── Supernetting
│   │   ├── Fragmentation
│   │   └── Time to Live (TTL)
│   ├── IPv6
│   │   ├── Header
│   │   ├── Addressing
│   │   └── IPv4-to-IPv6 Transition
│   ├── Internet Control Message Protocol (ICMP)
│   ├── Network Address Translation (NAT)
│   ├── Routing
│   │   ├── Static Routing
│   │   ├── Dynamic Routing
│   │   ├── RIP
│   │   ├── OSPF
│   │   ├── EIGRP
│   │   └── BGP
│   ├── Routing Algorithms
│   │   ├── Distance Vector
│   │   ├── Link State
│   │   └── Path Vector
│   └── Quality of Service (QoS)

├── 6. Transport Layer
│   ├── Multiplexing
│   ├── Demultiplexing
│   ├── User Datagram Protocol (UDP)
│   │   ├── Header
│   │   ├── Checksum
│   │   └── Applications
│   ├── Transmission Control Protocol (TCP)
│   │   ├── Header
│   │   ├── Ports
│   │   ├── Sequence Number
│   │   ├── Acknowledgment (ACK)
│   │   ├── Window
│   │   ├── Flags
│   │   ├── Maximum Segment Size (MSS)
│   │   └── Options
│   ├── Reliable Data Transfer
│   ├── Sliding Window
│   ├── Flow Control
│   ├── Congestion Control
│   │   ├── Slow Start
│   │   ├── Additive Increase Multiplicative Decrease (AIMD)
│   │   ├── Fast Retransmit
│   │   └── Fast Recovery
│   └── Connection Handshake
│       ├── Three-Way Handshake
│       └── Four-Way Handshake

├── 7. Application Layer
│   ├── Client-Server Architecture
│   ├── Peer-to-Peer (P2P)
│   ├── Socket Programming
│   ├── HTTP
│   │   ├── Methods
│   │   ├── Status Codes
│   │   ├── Headers
│   │   ├── Cookies
│   │   ├── Sessions
│   │   ├── Caching
│   │   └── HTTPS
│   ├── DNS
│   │   ├── Hierarchy
│   │   ├── Resource Records
│   │   ├── Recursive Query
│   │   └── Iterative Query
│   ├── FTP
│   ├── TFTP
│   ├── SMTP
│   ├── POP3
│   ├── IMAP
│   ├── SSH
│   ├── Telnet
│   ├── SNMP
│   ├── NTP
│   ├── LDAP
│   ├── SIP
│   ├── RTP
│   ├── RTSP
│   └── MQTT

├── 8. Network Security
│   ├── CIA Triad
│   ├── Authentication
│   ├── Authorization
│   ├── Accounting
│   ├── Cryptography
│   │   ├── Symmetric Encryption
│   │   ├── Asymmetric Encryption
│   │   ├── Hash Functions
│   │   └── Digital Signatures
│   ├── SSL/TLS
│   ├── Virtual Private Network (VPN)
│   ├── IPSec
│   ├── Firewall
│   ├── Intrusion Detection System (IDS)
│   ├── Intrusion Prevention System (IPS)
│   ├── Access Control List (ACL)
│   ├── Denial of Service (DoS)
│   ├── Distributed Denial of Service (DDoS)
│   ├── Spoofing
│   ├── Man-in-the-Middle (MITM)
│   ├── Phishing
│   └── Malware

├── 9. Wireless Networks
│   ├── Wi-Fi
│   │   ├── IEEE 802.11a
│   │   ├── IEEE 802.11b
│   │   ├── IEEE 802.11g
│   │   ├── IEEE 802.11n
│   │   ├── IEEE 802.11ac
│   │   ├── IEEE 802.11ax (Wi-Fi 6/6E)
│   │   └── IEEE 802.11be (Wi-Fi 7)
│   ├── Bluetooth
│   ├── ZigBee
│   ├── Near Field Communication (NFC)
│   ├── Cellular Networks
│   │   ├── 3G
│   │   ├── 4G
│   │   └── 5G
│   └── Roaming

├── 10. Data Centers and Cloud Computing
│   ├── Data Center
│   ├── Virtualization
│   ├── Hypervisor
│   ├── Containers
│   ├── Docker
│   ├── Kubernetes
│   ├── Software-Defined Networking (SDN)
│   ├── Network Functions Virtualization (NFV)
│   ├── Content Delivery Network (CDN)
│   └── Cloud Computing
│       ├── Infrastructure as a Service (IaaS)
│       ├── Platform as a Service (PaaS)
│       └── Software as a Service (SaaS)

├── 11. Networking Tools
│   ├── Wireshark
│   ├── tcpdump
│   ├── ping
│   ├── traceroute
│   ├── nslookup
│   ├── dig
│   ├── netstat
│   ├── ip
│   ├── arp
│   ├── nmap
│   └── iperf

└── 12. Advanced Topics
    ├── MPLS
    ├── VXLAN
    ├── EVPN
    ├── SD-WAN
    ├── Multicast
    ├── Anycast
    ├── Load Balancing
    ├── High Availability (HA)
    ├── Microservices Networking
    └── Zero Trust
```