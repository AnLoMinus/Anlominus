# [Top 25 Kali Linux Penetration Testing Tools](https://securitytrails.com/blog/kali-linux-tools)

<article class="blog-post row">
   <header class="blog-post-hero blog-post-header elem">
   </header>
   <aside class="blog-post-sidebar xl7 m12 elem">
      <div class="toc-container js-toc">
         <div id="toc-content" class="toc-content">
            <p id="blogtoc">Table of contents</p>
            <ul>
               <li class="first last">
                  <span></span>
                  <ul class="menu_level_1">
                     <li class="first">
                        <a href="#best-25-kali-linux-tools-for-beginners" class="">Best 25 Kali Linux Tools for Beginners</a>
                        <ul class="menu_level_2">
                           <li class="first">
                              <a href="#one-nmap" class="is-active">1. Nmap</a>
                           </li>
                           <li>
                              <a href="#two-lynis" class="">2. Lynis</a>
                           </li>
                           <li>
                              <a href="#three-fierce" class="">3. Fierce</a>
                           </li>
                           <li>
                              <a href="#four-openvas" class="">4. OpenVAS</a>
                           </li>
                           <li>
                              <a href="#five-nikto" class="">5. Nikto</a>
                           </li>
                           <li>
                              <a href="#six-wpscan" class="">6. WPScan</a>
                           </li>
                           <li>
                              <a href="#seven-skipfish" class="">7. Skipfish</a>
                           </li>
                           <li>
                              <a href="#eight-cmsmap" class="">8. CMSMap</a>
                           </li>
                           <li>
                              <a href="#nine-fluxion" class="">9. Fluxion</a>
                           </li>
                           <li>
                              <a href="#one0-aircrack-ng" class="">10. Aircrack-ng</a>
                           </li>
                           <li>
                              <a href="#one1-kismet-wireless" class="">11. Kismet Wireless</a>
                           </li>
                           <li>
                              <a href="#one2-wireshark" class="">12. Wireshark</a>
                           </li>
                           <li>
                              <a href="#one3-john-the-ripper" class="">13. John the Ripper</a>
                           </li>
                           <li>
                              <a href="#one4-thc-hydra" class="">14. THC Hydra</a>
                           </li>
                           <li>
                              <a href="#one5-findmyhash" class="">15. findmyhash</a>
                           </li>
                           <li>
                              <a href="#one6-rainbowcrack" class="">16. RainbowCrack</a>
                           </li>
                           <li>
                              <a href="#one7-metasploit-framework" class="">17. Metasploit Framework</a>
                           </li>
                           <li>
                              <a href="#one8-social-engineering-toolkit" class="">18. Social Engineering Toolkit</a>
                           </li>
                           <li>
                              <a href="#one9-beef" class="">19. BeEF</a>
                           </li>
                           <li>
                              <a href="#two0-yersinia" class="">20. Yersinia</a>
                           </li>
                           <li>
                              <a href="#two1-dhcpig" class="">21. DHCPig</a>
                           </li>
                           <li>
                              <a href="#two2-funkload" class="">22. FunkLoad</a>
                           </li>
                           <li>
                              <a href="#two3-slowhttptest" class="">23. SlowHTTPTest</a>
                           </li>
                           <li>
                              <a href="#two4-inundator" class="">24. Inundator</a>
                           </li>
                           <li class="last">
                              <a href="#two5-t50" class="">25. t50</a>
                           </li>
                        </ul>
                     </li>
                     <li class="last">
                        <a href="#summary" class="">Summary</a>
                     </li>
                  </ul>
               </li>
            </ul>
         </div>
      </div>
   </aside>
   <section class="blog-post-summary xl12 elem highlight-first-p">
      <p><a href="https://www.kali.org/" rel="nofollow noopener noreferrer" target="_blank">Kali Linux</a> is an open source distribution based on Debian focused on providing penetration testing and security auditing tools. Actively developed by Offensive Security, it’s one of the most popular security distributions in use by infosec companies and ethical hackers.</p>
   </section>
   <section class="blog-post-body xl12 m12 elem">
      <p>One of the best things about Kali is the fact that it doesn’t require you to install the OS in your hard drive — it uses a live image that can be loaded in your RAM memory to test your security skills with the more than 600 <a href="/blog/best-ethical-hacking-tools" title="Top 15 Ethical Hacking Tools Used by Infosec Professionals">ethical hacking tools</a> it provides.</p>
      <p>It includes numerous security-hacker tools for information gathering, vulnerability analysis, wireless attacks, web applications, exploitation tools, stress testing, forensic tools, sniffing and spoofing, password cracking, reverse engineering, hardware hacking and much more.</p>
      <p>We’ve previously explored the <a href="/blog/osint-tools" title="Top 25 OSINT Tools for Penetration Testing">Top 20 OSINT Tools</a> available, and today we’ll go through the list of top-used Kali Linux software. Let’s begin!</p>
      <img id="" title="Screenshot of Kali Linux 2018 - Install_Live DVD (64-bit)." alt="Kali Linux install DVD" class="lazyimg lboxs3  " src="https://assets.securitytrails.com/cdn-cgi/image/width=789,quality=100,format=auto/blog/kali-linux-tools/kali-linux-2018.jpg" data-src="https://assets.securitytrails.com/cdn-cgi/image/width=789,quality=100,format=auto/blog/kali-linux-tools/kali-linux-2018.jpg" width="789" height="450">
      <p></p>
      <p>Kali Linux uses what are called “Kali Linux Metapackages”—these <a href="https://tools.kali.org/kali-metapackages/" rel="nofollow noopener noreferrer" target="_blank">metapackages</a> allow you to install sets of tools, instead of requiring you to install all the available Kali Linux tools in the repo.</p>
      <p>For example, if you’re only going to use Kali Linux tools for wireless security assessment, then you can simply generate a Kali ISO image, and include the kali-linux-wireless metapackage only.</p>
      <p>For the purposes of this post, we’ll refer to the best Kali Linux Tools in general, regardless of the metapackages to which they belong.</p>
      <h2 id="best-25-kali-linux-tools-for-beginners">Best 25 Kali Linux Tools for Beginners</h2>
      <p>For ease of reference, we’ll divide the most-used software of Kali Linux into five distinct categories: information gathering, vulnerability scanning, wireless analysis tools, password crackers, exploitation tools and stress testing.</p>
      <h3 class="underline" id="one-nmap"><strong>1. Nmap</strong></h3>
      <p><a href="https://nmap.org/" rel="nofollow noopener noreferrer" target="_blank">Nmap</a> is the world’s most famous network mapper tool. It allows you to discover active hosts within any network, and acquire other information (such as open ports) relevant to penetration testing.</p>
      <p>Main features:</p>
      <ul>
         <li>Host discovery: useful for identifying hosts in any network</li>
         <li>Port scanning: lets you enumerate open ports on the local or remote host</li>
         <li>OS detection: useful for fetching operating system and hardware information about any connected device</li>
         <li>App version detection: allows you to determine application name and version number</li>
         <li>Scriptable interaction: extends Nmap default capabilities by using Nmap Scripting Engine (NSE)</li>
      </ul>
      <pre><code class="hljs diff">[securitytrails@kali root]$ nmap --help
Usage: nmap [Scan Type(s)] [Options] {target specification}
TARGET SPECIFICATION:
Can pass hostnames, IP addresses, networks, etc.
Ex: scanme.nmap.org, microsoft.com/24, 192.168.0.1; 10.0.0-255.1-254
<span class="hljs-deletion">-iL &lt;inputfilename&gt;: Input from list of hosts/networks</span>
<span class="hljs-deletion">-iR &lt;num hosts&gt;: Choose random targets</span>
<span class="hljs-deletion">--exclude &lt;host1[,host2][,host3],...&gt;: Exclude hosts/networks</span>
<span class="hljs-deletion">--excludefile &lt;exclude_file&gt;: Exclude list from file</span>
HOST DISCOVERY:
<span class="hljs-deletion">-sL: List Scan - simply list targets to scan</span>
<span class="hljs-deletion">-sn: Ping Scan - disable port scan</span>
<span class="hljs-deletion">-Pn: Treat all hosts as online -- skip host discovery</span>
<span class="hljs-deletion">-PS/PA/PU/PY[portlist]: TCP SYN/ACK, UDP or SCTP discovery to given ports</span>
<span class="hljs-deletion">-PE/PP/PM: ICMP echo, timestamp, and netmask request discovery probes</span>
<span class="hljs-deletion">-PO[protocol list]: IP Protocol Ping</span>
<span class="hljs-deletion">-n/-R: Never do DNS resolution/Always resolve [default: sometimes]</span>
<span class="hljs-deletion">--dns-servers &lt;serv1[,serv2],...&gt;: Specify custom DNS servers</span>
<span class="hljs-deletion">--system-dns: Use OS's DNS resolver</span>
<span class="hljs-deletion">--traceroute: Trace hop path to each host</span></code></pre>
      <p>Ready to unleash the power of Nmap? Check out our list of <a href="/blog/top-15-nmap-commands-to-scan-remote-hosts" title="Top 16 Nmap Commands to Scan Remote Hosts - Tutorial Guide">Top 15 Nmap Commands</a>.</p>
      <h3 class="underline" id="two-lynis"><strong>2. Lynis</strong></h3>
      <p><a href="https://cisofy.com/lynis/" rel="nofollow noopener noreferrer" target="_blank">Lynis</a> is probably one of the most complete tools available for cybersecurity compliance (e.g. PCI, HIPAA, SOx), testing, system hardening, and system auditing. That’s why it’s included in this Kali Linux tools list. </p>
      <p>Given its immense capabilities, Lynis also serves as a great vulnerability scanner and penetration testing platform.</p>
      <p>Its main features and characteristics include:</p>
      <ul>
         <li>Open source</li>
         <li>Free - with commercial support available</li>
         <li>Easy installation from Github repository</li>
         <li>Runs in multiple platforms (BSD, MacOS, Linux, BSD, AIX and others)</li>
         <li>Runs up to +300 security tests on the remote host</li>
         <li>Output report is shared on screen, including suggestions, warnings and critical security issues found on the machine</li>
      </ul>
      <h3 class="underline" id="three-fierce"><strong>3. Fierce</strong></h3>
      <p><a href="https://github.com/mschwager/fierce" rel="nofollow noopener noreferrer" target="_blank">Fierce</a> is a great tool for network mapping and <a href="/blog/best-port-scanners" title="Top 5 Best Port Scanners">port scanning</a>. It can be used to discover non-contiguous IP space and hostnames across networks.</p>
      <p>It’s similar to Nmap and Unicornscan, but unlike those, Fierce is mostly used for specific corporate networks.</p>
      <p>Once the penetration tester has defined the target network, Fierce will run several tests against the selected domains to retrieve valuable information that can be used for later analysis and exploitation.</p>
      <p>Its features include:</p>
      <ul>
         <li>Ability to change DNS server for reverse lookups</li>
         <li>Internal and external IP ranges scanning</li>
         <li>IP range and entire Class C scanning</li>
         <li>Logs capabilities into a system file</li>
         <li>Name Servers discovery and Zone Transfer attack</li>
         <li>Brute force capabilities using built-in or custom text list</li>
      </ul>
      <h3 class="underline" id="four-openvas"><strong>4. OpenVAS</strong></h3>
      <p><a href="http://www.openvas.org/" rel="nofollow noopener noreferrer" target="_blank">OpenVAS</a> (Open Vulnerability Assessment System) was developed by part of the team responsible for the famous Nessus vulnerability scanner. Licensed under the GLP license, it’s free software that anyone can use to explore local or remote network vulnerabilities.</p>
      <p>This security tool allows you to write and integrate your own security plugins to the OpenVAS platform — even though the current engine comes with more than 50k NVTs (Network Vulnerability Tests) that can literally scan anything you imagine in terms of security vulnerabilities.</p>
      <p>Main features:</p>
      <ul>
         <li>Simultaneous host discovery</li>
         <li>Network mapper and port scanner</li>
         <li>Support for OpenVAS Transfer Protocol</li>
         <li>Fully integrated with SQL Databases like SQLite</li>
         <li>Scheduled daily or weekly scans</li>
         <li>Exports results into XML, HTML, LateX file formats</li>
         <li>Ability to stop, pause and resume scans</li>
         <li>Full support for Linux and Windows</li>
      </ul>
      <img id="" title="OpenVAS Kali screenshot." alt="OpenVAS Kali screenshot" class="lazyimg lboxs3  " src="https://assets.securitytrails.com/cdn-cgi/image/width=789,quality=100,format=auto/blog/kali-linux-tools/openvas-kali-screenshot.jpg" data-src="https://assets.securitytrails.com/cdn-cgi/image/width=789,quality=100,format=auto/blog/kali-linux-tools/openvas-kali-screenshot.jpg" width="789" height="450">
      <p></p>
      <h3 class="underline" id="five-nikto"><strong>5. Nikto</strong></h3>
      <p>Written in Perl and included in Kali Linux, Nikto iworks as a complement to OpenVAS and other vulnerability scanners.</p>
      <p><a href="/blog/nikto-website-vulnerability-scanner" title="Nikto: a Practical Website Vulnerability Scanner">Nikto</a> allows penetration testers and ethical hackers to perform a full web server scan to discover security flaws and vulnerabilities. This security scan gathers results by detecting insecure file and app patterns, outdated server software and default file names as well as server and software misconfigurations.</p>
      <p>It includes support for proxies, host-based authentication, SSL encryption and much more.</p>
      <p>Main features include:</p>
      <ul>
         <li>Scans multiple ports on a server</li>
         <li>IDS evasion techniques</li>
         <li>Outputs results into TXT, XML, HTML, NBE or CSV.</li>
         <li>Apache and cgiwrap username enumeration</li>
         <li>Identifies installed software via headers, favicons and files</li>
         <li>Scans specified CGI directories</li>
         <li>Uses custom configuration files</li>
         <li>Debug and verbose output.</li>
      </ul>
      <h3 class="underline" id="six-wpscan"><strong>6. WPScan</strong></h3>
      <p><a href="http://wpscan.org/" rel="nofollow noopener noreferrer" target="_blank">WPScan</a> is recommended for auditing your WordPress installation security. By using WPScan you can check if your WordPress setup is vulnerable to certain types of attacks, or if it’s exposing too much information in your core, plugin or theme files.</p>
      <p>This WordPress security tool also lets you find any weak passwords for all registered users, and even run a brute force attack against it to see which ones can be cracked.</p>
      <p>WPScan receives frequent updates from the wpvulndb.com WordPress vulnerability database, which makes it a great software for up-to-date WP security.</p>
      <p>What can you do with WPScan?</p>
      <ul>
         <li>Non-intrusive security scans</li>
         <li>WP username enumeration</li>
         <li>WP bruteforce attack &amp; weak password cracking</li>
         <li>WP plugins vulnerability enumeration</li>
         <li>Schedule WordPress security scans</li>
      </ul>
      <p>Are you interested in WordPress security? Check out our blog post on asking exactly that: <a href="/blog/is-wordpress-secure" title="Is WordPress Secure?">Is WordPress secure?</a></p>
      <h3 class="underline" id="seven-skipfish"><strong>7. Skipfish</strong></h3>
      <p>Another worthy addition to our kali linux tools list is <a href="https://gitlab.com/kalilinux/packages/skipfish/" rel="nofollow noopener noreferrer" target="_blank">Skipfish</a>. This tool is similar to WPScan, but rather than focusing on WordPress only, Skipfish scans a large amount of web applications, serving as a great auditing tool for crawling web-based data, and gives you a quick insight into how insecure your app is.</p>
      <p>With its recon capabilities, it performs a recursive crawl and dictionary-based tests over all your URLs, creating a digital map of security checks along with the results for each one of them.</p>
      <p>Notable Skipfish features include:</p>
      <ul>
         <li>High-speed security checks (200+ requests per second)</li>
         <li>Easy to use</li>
         <li>Automated learning capabilities</li>
         <li>Low false positive ratio</li>
         <li>Differential security checks</li>
      </ul>
      <h3 class="underline" id="eight-cmsmap"><strong>8. CMSMap</strong></h3>
      <p>Unlike WPScan, <a href="https://github.com/Dionach/CMSmap" rel="nofollow noopener noreferrer" target="_blank">CMSMap</a> aims to be a centralized solution for not only one, but up to four of the most popular CMS in terms of vulnerability detection.</p>
      <p>CMSmap is an open source project written in Python that helps automate the process of vulnerability scanning and detection in WordPress, Joomla, Drupal, and Moodle.</p>
      <p>This tool is not only useful for detecting security flaws in these four popular CMS but also for running actual brute force attacks and launching exploits once a vulnerability has been found.</p>
      <p>Main features include:</p>
      <ul>
         <li>Supports multiple scan threats</li>
         <li>Ability to set custom user-agent and header</li>
         <li>Support for SSL encryption.</li>
         <li>Verbose mode for debugging purposes</li>
         <li>Saves output in a text file.</li>
      </ul>
      <h3 class="underline" id="nine-fluxion"><strong>9. Fluxion</strong></h3>
      <p><a href="https://github.com/wi-fi-analyzer/fluxion" rel="nofollow noopener noreferrer" target="_blank">Fluxion</a> is a WiFi analyzer that specializes in MITM WPA attacks.</p>
      <p>It allows you to scan wireless networks, searching for security flaws in corporate or personal networks.</p>
      <p>Unlike other WiFi cracking tools, Fluxion does not launch any brute force cracking attempts that usually take a lot of time.</p>
      <p>Instead, it spawns an MDK3 process which forces all users connected to the target network to deauthenticate. Once this is done, the user is prompted to connect to a fake access point, where they will enter the WiFi password. Then the program reports the password to you, so you can gain access.</p>
      <!-- <div id="twitter-widget" class="subscribe-widget mv3  center black-grey">
         <div id="twlogo"><img src="../images/logo-short.png" /></div>
         <div id="twcont">
           <h3>Stay in the loop with the best infosec news, tips and tools</h3><p><span class="h3 mb1">Follow us on Twitter to receive updates!</span></p>
           <a href="https://twitter.com/SecurityTrails?ref_src=twsrc%5Etfw" class="twitter-follow-button" data-show-count="true" data-size="large">Follow @SecurityTrails</a>
         </div>
         </div>
         -->
      <h3 class="underline" id="one0-aircrack-ng"><strong>10. Aircrack-ng</strong></h3>
      <p><a href="https://www.aircrack-ng.org/" rel="nofollow noopener noreferrer" target="_blank">Aircrack-ng</a> is a wireless security software suite. It consists of a network packet analyzer, a WEP network cracker, and WPA / WPA2-PSK along with another set of wireless auditing tools. Here are the most popular tools included in the Aircrack-ng suite:</p>
      <ul>
         <li>Airmon-Ng: converts your wireless card into a wireless card in a promiscuous way</li>
         <li>Airmon-Ng: captures packages of desired specification, and t is particularly useful in deciphering passwords</li>
         <li>Aircrack-Ng: used to decrypt passwords — able to use statistical techniques to decipher WEP and dictionaries for WPA and WPA2 after capturing the WPA handshake</li>
         <li>Aireplay-Ng: can be used to generate or accelerate traffic in an access point</li>
         <li>Airdecap-Ng: decrypts wireless traffic once we the key is deciphered</li>
      </ul>
      <p>Main features:</p>
      <ul>
         <li>Support for WEP, WPA/WPA2-PSK passwords</li>
         <li>Fast WEP and WPA password decryption</li>
         <li>Packet sniffer and injector</li>
         <li>Ability to create a virtual tunnel</li>
         <li>Automated WEP key password recovery</li>
         <li>Password list management</li>
      </ul>
      <pre><code class="hljs xml">[securitytrails@kali root]$ aircrack-ng

Aircrack-ng 1.2 rc4 - (C) 2006-2015 Thomas d'Otreppe
http://www.aircrack-ng.org

usage: aircrack-ng [options] <span class="hljs-tag">&lt;<span class="hljs-name">.cap</span> / <span class="hljs-attr">.ivs</span> <span class="hljs-attr">file</span>(<span class="hljs-attr">s</span>)&gt;</span>

Common options:

-a <span class="hljs-tag">&lt;<span class="hljs-name">amode</span>&gt;</span> : force attack mode (1/WEP, 2/WPA-PSK)
-e <span class="hljs-tag">&lt;<span class="hljs-name">essid</span>&gt;</span> : target selection: network identifier
-b <span class="hljs-tag">&lt;<span class="hljs-name">bssid</span>&gt;</span> : target selection: access point's MAC
-p <span class="hljs-tag">&lt;<span class="hljs-name">nbcpu</span>&gt;</span> : # of CPU to use (default: all CPUs)
-q : enable quiet mode (no status output)
-C <span class="hljs-tag">&lt;<span class="hljs-name">macs</span>&gt;</span> : merge the given APs to a virtual one
-l <span class="hljs-tag">&lt;<span class="hljs-name">file</span>&gt;</span> : write key to file</code></pre>
      <h3 class="underline" id="one1-kismet-wireless"><strong>11. Kismet Wireless</strong></h3>
      <p><a href="https://www.kismetwireless.net/" rel="nofollow noopener noreferrer" target="_blank">Kismet Wireless</a> is a multi-platform free Wireless LAN analyzer, sniffer and IDS (intrusion detection system).</p>
      <p>It’s compatible with almost any kind of wireless card. Using it in sniffing mode allows you to work with wireless networks such as 802.11a, 802.11b, 802.11g, and 802.11n.</p>
      <p>Kismet Wireless runs natively in Windows, Linux and BSD operating systems (FreeBSD, NetBSD, OpenBSD, and MacOS).</p>
      <p>Main features:</p>
      <ul>
         <li>Ability to run in passive mode</li>
         <li>Easy detection of Wireless clients and access points</li>
         <li>Wireless intrusion detection system</li>
         <li>Scans wireless encryption levels for a given AP</li>
         <li>Supports channel hopping</li>
         <li>Network logging</li>
      </ul>
      <h3 class="underline" id="one2-wireshark"><strong>12. Wireshark</strong></h3>
      <p><a href="https://www.wireshark.org/" rel="nofollow noopener noreferrer" target="_blank">Wireshark</a> is an open source multi-platform network analyzer that runs Linux, OS X, BSD, and Windows.</p>
      <p>It’s especially useful for knowing what’s going on inside your network,  which accounts for its widespread use in government, corporate and education industries.</p>
      <p>It works in a similar manner as tcpdump, but Wireshark adds a great graphical interface that allows you to filter, organize and order captured data so it takes less time to analyze. A text-based version, called tshark, is comparable in terms of features.</p>
      <p>Main features include:</p>
      <ul>
         <li>GUI-friendly interface</li>
         <li>Packet live capture and offline analysis</li>
         <li>Full protocol inspection</li>
         <li>Gzip compression and decompression on the fly</li>
         <li>Full VoIP analysis</li>
         <li>Decryption support for IPsec, ISAKMP, Kerberos, SNMPv3, SSL/TLS, WEP, and WPA/WPA2</li>
         <li>Reading capture file formats such as tcpdump (libpcap), Pcap NG, Catapult DCT2000, Cisco Secure IDS iplog and many others</li>
      </ul>
      <h3 class="underline" id="one3-john-the-ripper"><strong>13. John the Ripper</strong></h3>
      <p><a href="http://www.openwall.com/john/" rel="nofollow noopener noreferrer" target="_blank">John the Ripper</a> is a multi-platform cryptography testing tool that works on Unix, Linux, Windows and MacOS. It allows system administrators and security penetration testers to launch brute force attacks to test the strength of any system password. It can be used to test encryptions such as DES, SHA-1 and many others.</p>
      <p>Its abilities to change password decryption methods are set automatically, depending on the detected algorithm.</p>
      <p>Licensed and distributed under the GPL license, it’s a free tool available for anyone who wants to test their password security.</p>
      <p>Main features include:</p>
      <ul>
         <li>Dictionary attacks and brute force testing</li>
         <li>Compatible with most operating systems and CPU architectures</li>
         <li>Can run automatically by using crons</li>
         <li>Pause and Resume options for any scan</li>
         <li>Lets you define custom letters while building dictionary attack lists</li>
         <li>Allows brute force customization rules</li>
      </ul>
      <h3 class="underline" id="one4-thc-hydra"><strong>14. THC Hydra</strong></h3>
      <p><a href="https://github.com/vanhauser-thc/thc-hydra" rel="nofollow noopener noreferrer" target="_blank">THC Hydra</a> is a free hacking tool licensed under AGPL v3.0, widely used by those who need to brute force crack remote authentication services.</p>
      <p>As it supports up to more than 50 protocols, it’s  one of the best tools for testing your password security levels in any type of server environment.</p>
      <p>It also provides support for most popular operating systems like Windows, Linux, Free BSD, Solaris and OS X.</p>
      <p>Main features:</p>
      <ul>
         <li>Ultrafast password cracking speed</li>
         <li>Runs on multiple operating systems</li>
         <li>Ability to launch parallel brute force cracking attacks</li>
         <li>Module-based application allows you to add custom modules</li>
         <li>Support for multiple protocols such as CVS, FTP, HTTP, HTTPS, HTTP-Proxy, IMAP, IRC, LDAP, MS-SQL, MySQL, etc.</li>
      </ul>
      <h3 class="underline" id="one5-findmyhash"><strong>15. findmyhash</strong></h3>
      <p>Written in Python, <a href="https://tools.kali.org/password-attacks/findmyhash" rel="nofollow noopener noreferrer" target="_blank">findmyhash</a> is a free open-source tool that helps to crack passwords using free online services.</p>
      <p>It works with the following algorithms: MD4, MD5, SHA1, SHA225, SHA256, SHA384, SHA512, RMD160, GOST, WHIRLPOOL, LM, NTLM, MYSQL, CISCO7, JUNIPER, LDAP_MD5, and LDAP_SHA1. It also supports multi-thread analysis for faster speed and algorithm recognition from the hash value.</p>
      <p>Main features include:</p>
      <ul>
         <li>Empty hashes recognition</li>
         <li>Reads input from a text file</li>
         <li>Ability to escape special characters</li>
         <li>Cracks single or multiple hashes.</li>
         <li>Password hash search on Google</li>
         <li>Pause and Resume options</li>
         <li>Saves the results in a file.</li>
      </ul>
      <h3 class="underline" id="one6-rainbowcrack"><strong>16. RainbowCrack</strong></h3>
      <p><a href="http://project-rainbowcrack.com/index.htm" rel="nofollow noopener noreferrer" target="_blank">RainbowCrack</a> is a password cracking tool available for Windows and Linux operating systems.</p>
      <p>Unlike other password cracking tools, RainbowCrack uses a time-memory tradeoff algorithm to crack hashes along with large pre-computed “rainbow tables” that help to reduce password cracking time.</p>
      <p>Features include:</p>
      <ul>
         <li>Available rerminal-based and GUI-friendly interface</li>
         <li>Works well with multi-core processors</li>
         <li>Rainbow table generation, sort, conversion and lookup</li>
         <li>Support for GPU acceleration (Nvidia CUDA and AMD OpenCL)</li>
         <li>Support rainbow table of any hash algorithm and charset.</li>
         <li>Support rainbow table in raw file format (.rt) and compact file format (.rtc).</li>
      </ul>
      <h3 class="underline" id="one7-metasploit-framework"><strong>17. Metasploit Framework</strong></h3>
      <p><a href="https://github.com/rapid7/metasploit-framework" rel="nofollow noopener noreferrer" target="_blank">Metasploit Framework</a> is a Ruby-based platform used to develop, test and execute exploits against remote hosts. It includes a full collection of security tools used for penetration testing, along with a powerful terminal-based console — called msfconsole — which allows you to find targets, launch scans, exploit security flaws and collect all available data.</p>
      <p>Available for Linux and Windows, MSF is probably one of the most powerful security auditing tools freely available for the infosec market.</p>
      <p>What can you do with Metasploit Framework?</p>
      <ul>
         <li>Network enumeration and discovery</li>
         <li>Evade detection on remote hosts</li>
         <li>Exploit development and execution</li>
         <li>Work with the MFSconsole</li>
         <li>Scan remote targets</li>
         <li>Exploit vulnerabilities and collect valuable data</li>
      </ul>
      <h3 class="underline" id="one8-social-engineering-toolkit"><strong>18. Social Engineering Toolkit</strong></h3>
      <p>Available for Linux and Mac OS X, the <a href="https://github.com/trustedsec/social-engineer-toolkit" rel="nofollow noopener noreferrer" target="_blank">Social Engineering Toolkit</a> (known as SET) is an open-source Python-based penetration testing framework that will help you launch Social-Engineering attacks in no time.</p>
      <p>Have you ever wondered how to hack social network accounts? Well, SET has the answer — it’s indispensable for those interested in the field of social engineering.</p>
      <p>What kind of attacks can I launch with SET?</p>
      <ul>
         <li>WiFi AP-based attacks: this kind of attack will redirect or intercept packets from users using our WiFi network</li>
         <li>SMS and email attacks: here, SET will try to trick and generate a fake email to get social credentials</li>
         <li>Web-based attacks: lets you clone a web page so you can drive real users by DNS spoofing or phishing attacks</li>
         <li>Creation of payloads (.exe): SET will create a malicious .exe file that, after executed, will compromise the system of the user who clicks on it</li>
      </ul>
      <p>Highlighted features include:</p>
      <ul>
         <li>Fast penetration testing</li>
         <li>Integration with third-party modules</li>
         <li>Phishing attack generator</li>
         <li>Launch QRCode attacks</li>
         <li>Support for Powershell attack vectors</li>
      </ul>
      <img id="" title="SET Kali." alt="SET Kali SecurityTrails" class="lazyimg lboxs3  " src="https://assets.securitytrails.com/cdn-cgi/image/width=789,quality=100,format=auto/blog/kali-linux-tools/set-kali.jpg" data-src="https://assets.securitytrails.com/cdn-cgi/image/width=789,quality=100,format=auto/blog/kali-linux-tools/set-kali.jpg" width="789" height="450">
      <p></p>
      <h3 class="underline" id="one9-beef"><strong>19. BeEF</strong></h3>
      <p><a href="http://beefproject.com/" rel="nofollow noopener noreferrer" target="_blank">BeEF</a> stands for The Browser Exploitation Framework,a powerful penetration testing tool that relies on browser vulnerabilities and flaws to exploit the host.</p>
      <p>Unlike other Kali cybersecurity tools, it focuses on the browser side, including attacks against mobile and desktop clients, letting you analyze exploitability of any Mac and Linux system.</p>
      <p>You’ll be able to select specific modules in real-time to audit your browser security.</p>
      <p>BeEF requirements:</p>
      <ul>
         <li>OS: Mac OS X 10.5.0 or higher / modern Linux</li>
         <li>Ruby 2.3 or newer</li>
         <li>SQLite 3.x</li>
         <li>Node.js 6 or newer</li>
      </ul>
      <p>Main features:</p>
      <ul>
         <li>Web and console UI</li>
         <li>Metasploit integration</li>
         <li>Modular structure</li>
         <li>Interprocess communication &amp; exploitation</li>
         <li>History gathering and intelligence</li>
         <li>Host and network reconnaissance</li>
         <li>Ability to detect browser plugins</li>
      </ul>
      <h3 class="underline" id="two0-yersinia"><strong>20. Yersinia</strong></h3>
      <p><a href="https://github.com/tomac/yersinia" rel="nofollow noopener noreferrer" target="_blank">Yersinia</a> is a security network tool that allows you to perform L2 attacks by taking advantage of security flaws in different network protocols.</p>
      <p>This tool can attack switches, routers, DHCP servers and many other protocols. It includes a fancy GTK GUI, ncurses-based mode, is able to read from a custom configuration file, supports debugging mode and offers to save results in a log file.</p>
      <p>Supported network protocols:</p>
      <ul>
         <li>802.1q and 802.1x Wireless LANs</li>
         <li>Cisco Discovery Protocol (CDP)</li>
         <li>Dynamic Host Configuration Protocol (DHCP)</li>
         <li>Dynamic Trunking Protocol (DTP)</li>
         <li>Inter-Switch Link Protocol (ISL)</li>
         <li>Hot Standby Router Protocol (HSRP)</li>
         <li>Spanning Tree Protocol (STP)</li>
         <li>VLAN Trunking Protocol (VTP)</li>
      </ul>
      <h3 class="underline" id="two1-dhcpig"><strong>21. DHCPig</strong></h3>
      <p><a href="https://n0where.net/dhcp-exhaustion-attack-dhcpig" rel="nofollow noopener noreferrer" target="_blank">DHCPig</a> is a DHCP exhaustion application that will launch an advanced attack in order to consume all active IPs on the LAN.</p>
      <p>It also prevents new users from getting IPs assigned to their computers. Works pretty well attacking Linux LANs as well as Windows 2003, 2008, etc.</p>
      <p>In fact, DHCPig doesn’t require any installation, as it is a tiny script;  it only requires scapy library installed on your system,  and it includes support for ipv4 and ipv6.</p>
      <p>What can you do with DHCPig?</p>
      <ul>
         <li>Detect/print DHCP replies</li>
         <li>Detect/print ICMP requests</li>
         <li>Discover and create a network map of your neighbours’ IPs</li>
         <li>Request all possible IP addresses in a zone</li>
         <li>Create a loop and send DHCP requests from different MAC addresses</li>
         <li>Explore your neighbours’ MAC &amp; IP addresses</li>
         <li>Release IPs and MAC address from the DHCP server</li>
         <li>ARP for all neighbours on that LAN</li>
         <li>Knock off network on Windows systems</li>
      </ul>
      <h3 class="underline" id="two2-funkload"><strong>22. FunkLoad</strong></h3>
      <p>Written in Python, <a href="https://pypi.org/project/funkload/" rel="nofollow noopener noreferrer" target="_blank">FunkLoad</a> is a popular web-stress tool that works by emulating a fully functional web browser. It’s highly useful for testing web projects and seeing how well they react in terms of web server performance.</p>
      <p>FunkLoad allows full performance testing to help you identify possible bottlenecks within your web apps and web servers, at the same time testing your application recoverability time.</p>
      <p>Main FunkLoad features include:</p>
      <ul>
         <li>Real web browser emulation (including GET/POST/PUT/DELETE, DAV, cookie, referer support, etc)</li>
         <li>Command-line advanced tests</li>
         <li>Full benchmarking reports in PDF, HTML, ReST, Org-mode</li>
         <li>Benchmark differential comparison between 2 results</li>
         <li>Test customization using a configuration file</li>
         <li>Full support for popular servers such as PHP, Python, Java</li>
      </ul>
      <h3 class="underline" id="two3-slowhttptest"><strong>23. SlowHTTPTest</strong></h3>
      <p><a href="https://github.com/shekyan/slowhttptest" rel="nofollow noopener noreferrer" target="_blank">SlowHTTPTest</a> is one of the most popular web-stress applications used to launch DOS attacks against any HTTP server. This type of security tool focuses on sending low-bandwidth attacks to test your web-server health and response times. It includes statistics of all your tests and allows you to run multiple types of attacks such as:</p>
      <ol>
         <li>Apache Range Header.</li>
         <li>Slow Read.</li>
         <li>Slow HTTP POST.</li>
         <li>Slowloris.</li>
      </ol>
      <p>Main features include:</p>
      <ul>
         <li>Saving statistics output in HTML and CSV files</li>
         <li>Setting verbose level (0-4)</li>
         <li>Targeting custom number of connections</li>
         <li>Setting HTTP connection rate (per seconds)</li>
         <li>Proxy traffic redirection</li>
      </ul>
      <img id="" title="SlowHTTPTest." alt="SlowHTTPTest" class="lazyimg lboxs3  " src="https://assets.securitytrails.com/cdn-cgi/image/width=789,quality=100,format=auto/blog/kali-linux-tools/slowhttptest.jpg" data-src="https://assets.securitytrails.com/cdn-cgi/image/width=789,quality=100,format=auto/blog/kali-linux-tools/slowhttptest.jpg" width="789" height="450">
      <p></p>
      <h3 class="underline" id="two4-inundator"><strong>24. Inundator</strong></h3>
      <p><a href="http://inundator.sourceforge.net/" rel="nofollow noopener noreferrer" target="_blank">Inundator</a> is a multi-threaded IDS evasion security tool designed to be anonymous. By using TOR it can flood intrusion detection systems (especially with Snort) causing false positives, which hide the real attack taking place behind the scenes t. By using SOCKS proxy it can generate more than 1k false-positives per minute during an attack.</p>
      <p>The main goal of Inundator is to keep your security team busy dealing with false positives while a real attack is happening.</p>
      <p>Inundator features and attributes include:</p>
      <ul>
         <li>Multi-threaded capabilities</li>
         <li>Full SOCKS support</li>
         <li>Anonymization-ready</li>
         <li>Support of multiple targets</li>
         <li>Queue-based</li>
      </ul>
      <h3 class="underline" id="two5-t50"><strong>25. t50</strong></h3>
      <p><a href="https://gitlab.com/fredericopissarra/t50" rel="nofollow noopener noreferrer" target="_blank">t50</a> is another web-stress testing tool included with Kali Linux distribution. It can help you test how your websites, servers and networks react under high load average during an attack.</p>
      <p>It’s one of the few security tools capable of encapsulating protocols using GRE (Generic Routing Encapsulation), and supports up to 14 different protocols. The t50 package also lets you send all protocols sequentially using one single SOCKET.</p>
      <p>t50 features:</p>
      <ul>
         <li>DoS and DDoS attacks simulator</li>
         <li>Main supported protocols include TCP, UDP, ICMP, IGMP, etc.</li>
         <li>Up to 1,000,000 pps of SYN Flood if using Gigabit network</li>
         <li>Up to 120k pps of SYN Flood if using 100Mbps network</li>
      </ul>
   </section>
   <section class="xl12 related-pages-section related-pages-narrow">
   </section>
</article>
