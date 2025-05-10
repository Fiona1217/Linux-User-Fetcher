# 🔍 Linux User Info Fetcher

A lightweight shell script that displays comprehensive user information on Linux systems.

## 💼 Skills
**This project demonstrates my proficiency in:** <br />
<br />
**Technical Skills:**
- Linux system administration (user management, file hierarchy)
- Bash/shell scripting fundamentals
- Parsing system files (/etc/passwd structure)
- Command-line tools (cut, stat, etc.)
- Environment variables and system paths
- File permissions and umask settings
- Arithmetic operations in shell

**Professional Skills:**
- Creating practical system utilities
- Writing clean, documented code
- Problem decomposition
- Following Unix philosophy (small, focused tools)
- User-focused output formatting
- Error handling (directory size calculation)

**Computer Science Concepts:**
- User/group permissions (UID/GID)
- Process execution environments
- Filesystem operations
- Text processing pipelines
- System resource measurement

## ✨ Features
- Displays username, UID, and GID
- Shows comment field and home directory
- Reveals default shell path
- Calculates home directory size
- Identifies current user context
- Lightweight and fast (~100 lines of code)
- Works on most Linux distributions

## 🚀 Quick Start
```bash
git clone https://github.com/yourusername/reponame.git
cd reponame
chmod +x user_info.sh
./user_info.sh [username]
```

## 📊 Sample Output
```
Username: alice
UID: 1001
GID: 1001
Comment: Alice Wonderland, Development Team
Home Directory: /home/alice
Path to Shell: /bin/bash
Home Directory Size: 2450KB
Current User: bob
Current Home Directory: /home/bob
```

## 🛠️ How It Works
The script:
1. Queries /etc/passwd for user details
2. Uses cut to parse different fields
3. Calculates directory size with stat
4. Formats output for easy reading
