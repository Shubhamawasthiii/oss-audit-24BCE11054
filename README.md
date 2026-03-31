# OSS Audit — Git | 24BCE11054

**Course:** Open Source Software
**Student:** Shubham Awasthi
**Reg. No.:** 24BCE11054
**Faculty:** Dr. Adarsh Patel
**Submission Date:** 31 March 2026

---

## What This Project Is About

This is my capstone audit for the OSS course. I picked **Git** as my software to analyze — partly because I use it every day, and partly because its origin story is genuinely interesting. The whole thing came out of a licensing dispute, and Linus Torvalds basically built it in a weekend out of frustration. That felt worth digging into.

The project covers where Git came from, what its license actually says, how it sits inside a Linux system, and how it compares to proprietary alternatives like Perforce.

---

## Shell Scripts Included

Five bash scripts are included, each demonstrating different Linux and shell concepts:

| Script | What It Does |
|--------|-------------|
| `Script_1_System_Identity_Report.sh` | Prints system info — distro, kernel, uptime, user |
| `Script_2_FOSS_Package_Inspector.sh` | Checks if a package is installed and shows its version |
| `Script_3_Disk_and_Permission_Auditor.sh` | Lists permissions and sizes for key system directories |
| `Script_4_Log_File_Analyzer.sh` | Searches a log file for a keyword and counts matches |
| `Script_5_Open_Source_Manifesto_Generator.sh` | Takes user input and writes a personal manifesto to a file |

---

## How to Run the Scripts

Make sure the scripts are executable first:

```bash
chmod +x Script_*.sh
```

Then run any of them directly:

```bash
./Script_1_System_Identity_Report.sh
./Script_2_FOSS_Package_Inspector.sh
./Script_3_Disk_and_Permission_Auditor.sh
./Script_4_Log_File_Analyzer.sh /var/log/syslog error
./Script_5_Open_Source_Manifesto_Generator.sh
```

> **Note:** Script 4 takes two arguments — the log file path and the keyword to search for. The keyword defaults to `error` if you leave it blank.

---

## Project Structure

```
oss-audit-24BCE11054/
├── README.md
├── Script_1_System_Identity_Report.sh
├── Script_2_FOSS_Package_Inspector.sh
├── Script_3_Disk_and_Permission_Auditor.sh
├── Script_4_Log_File_Analyzer.sh
├── Script_5_Open_Source_Manifesto_Generator.sh
└── manifesto_shubham-awasthi.txt
```

---

## Software Audited — Git

- **License:** GNU General Public License v2 (GPL v2)
- **Original Author:** Linus Torvalds
- **First Released:** April 2005
- **Current Maintainer:** Junio C Hamano
- **Written In:** C
- **Official Docs:** https://git-scm.com/docs

Git was built as a direct response to the BitKeeper licensing controversy. When the Linux kernel team lost access to BitKeeper in 2005, Torvalds spent a few days writing Git from scratch. Within a month, the entire Linux kernel project had migrated to it. It has been the dominant version control system ever since.

---

## License

The scripts in this repository are submitted as coursework for the Open Source Software course at VIT Bhopal. They are free to use for educational reference.

---

## References

- GNU GPL v2 — https://www.gnu.org/licenses/old-licenses/gpl-2.0.html
- Git Official Site — https://git-scm.com
- Git Source Code — https://github.com/git/git
- Free Software Definition — https://www.gnu.org/philosophy/free-sw.html
- Open Source Initiative — https://opensource.org/osd
