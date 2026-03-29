# Open Source Audit Project

**Student Name:** Manav Tiwari
**Roll Number:** 24BAI10367
**Chosen Software:** Git  

## Project Overview
This repository contains five shell scripts written as part of the Open Source Audit capstone project. These scripts demonstrate practical Linux skills, system auditing, and automation, with a specific focus on analyzing the version control system, Git.

## Prerequisites / Dependencies
To run these scripts, you need:
* A Linux environment (Ubuntu, Debian, Fedora, etc.)
* Standard GNU coreutils (`ls`, `grep`, `awk`, `du`, etc.)
* A package manager (`dpkg` is used in Script 2 for Debian/Ubuntu systems; adjust to `rpm` if using Fedora/RedHat)
* Git installed on the system (to fully test Scripts 2 and 3)

## Script Descriptions & Execution Instructions

Before running any script, you must grant it execution permissions. You can do this for all scripts at once by running:
`chmod +x *.sh`

### 1. System Identity Report (`script1.sh`)
**Description:** Introduces the Linux system by displaying the distribution name, kernel version, current user, uptime, and an open-source license message. It also displays Git as the chosen project software.
**How to run:** 
`./script1.sh`

### 2. FOSS Package Inspector (`script2.sh`)
**Description:** Checks if **Git** is installed on the system, retrieves its version and description using the package manager, and outputs a brief philosophical note about Linus Torvalds' creation of Git.
**How to run:** 
`./script2.sh`

### 3. Disk and Permission Auditor (`script3.sh`)
**Description:** Loops through critical system directories to report their size, ownership, and permissions. It specifically audits the `/usr/share/git-core` directory to check Git's system-wide footprint.
**How to run:** 
`./script3.sh`

### 4. Log File Analyzer (`script4.sh`)
**Description:** Analyzes a specified log file line-by-line, counting the occurrences of a specific keyword (default: "error") and printing the most recent matches. Features a loop to retry if an empty or invalid file is provided.
**How to run:** 
`./script4.sh /var/log/syslog "warning"` 
*(Or run without arguments to use the defaults: `./script4.sh`)*

### 5. Open Source Manifesto Generator (`script5.sh`)
**Description:** Interactively asks the user three questions about their perspective on open source and generates a personalized text file manifesto saved to the current directory.
**How to run:** 
`./script5.sh`