# oss-audit--24BSA10290-
Open Source Audit: Apache HTTP Server

Student Name: Ananya Sinha

Registration Number: 24BSA10290

Course: Open Source Software (Capstone Project)

📌 Project Overview
This repository contains a structured audit of the Apache HTTP Server, focusing on its origins, licensing (Apache 2.0), and its role in the global FOSS ecosystem. It includes five specialized shell scripts designed to automate system identification, package inspection, and security auditing on a Linux environment.

📂 Repository Contents
identity.sh: Generates a system identity report (Kernel, Uptime, User).

inspector.sh: Checks for Apache installation and license metadata.

auditor.sh: Audits directory permissions and disk usage for web-server paths.

log_analyzer.sh: Parses server logs to count and display error occurrences.

How to Run the Audit

To execute these scripts, you must be using a Linux environment (Ubuntu/WSL/Git Bash).

Clone the Repository:

Bash
git clone https://github.com/Tropicis/oss-audit--24BSA10290-.git
cd oss-audit--24BSA10290-
Grant Execution Permissions:

Bash
chmod +x *.sh
Run the Primary Audit Script:

Bash
./identity.sh
🛠 Dependencies
OS: Linux (Ubuntu 24.04 recommended)

Packages: apache2 (Required for inspector.sh and auditor.sh)

Terminal: Bash Shell

📜 License

manifesto.sh: An interactive script for generating a personalized FOSS manifesto.
