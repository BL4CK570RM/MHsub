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

## 🛠️ Usage

```bash
bash MHsub.sh -d example.com -a all.txt -l live.txt
