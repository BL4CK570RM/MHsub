# MHsub 🔍 — Maximum Hunt for Subdomains

MHsub (Maximum Hunt for Subdomains) is a powerful and flexible Bash-based tool for subdomain enumeration tool developed by [BL4CK_570RM]. It combines multiple subdomain discovery tools to ensure comprehensive results and filters for live subdomains efficiently.

---

## 📌 Features

- ✅ Combines the power of:
  - `subfinder`
  - `assetfinder`
  - `amass`
  - `sublist3r`
  - `findomain`
  - `crt.sh` (via API)
  - `PureDNS` (optional)
- ⚙️ Checks which subdomains are live using `httpx`
- 📁 Outputs:
  - All unique subdomains
  - Live subdomains
  - Full HTTPX scan results

---

Usage:
  MHsub -d <domain> -a <all_domains_output.txt> -l <live_domains_output.txt> [-m lite|deep]
  
  MHsub -h | --help

Required Options:
  -d, --domain        Target domain to enumerate (e.g., example.com)
  
  -a, --all-subs      Output file to save all discovered subdomains
  
  -l, --live-subs     Output file to save live subdomains
  

Scan Modes:
  -m, --mode          Scan mode (default: lite)
  
      lite            Fast scan (skip Amass for speed)
      
      deep            Comprehensive scan (include Amass)
      

Optional Flags:

  -h, --help          Show this help message and exit
  -up, --update       Update this tool 

🔧 Setup Tip:

If running `MHsub -h` gives you the following error:
  /usr/local/bin/MHsub: 1: 404:: not found

It means the binary isn't executable or is misconfigured. Here's how to fix it:

👉 To run it from the current directory:
  sudo chmod +x ./MHsub
  ./MHsub -h

🌍 To use it from anywhere on your system:
  sudo rm /usr/local/bin/MHsub
  sudo cp MHsub /usr/local/bin/MHsub
  sudo chmod +x /usr/local/bin/MHsub

Now you can use `MHsub` globally from any directory

Examples:
  MHsub -d example.com -a all.txt -l live.txt -m lite
  
  MHsub --domain example.com --all-subs all.txt --live-subs live.txt --mode deep

Description:
  MHsub is a powerful subdomain enumeration tool with two scan modes:
  - Lite mode (fast): Uses subfinder, assetfinder, sublister, findomain, crt.sh
  - Deep mode (slow): Adds Amass for comprehensive discovery
