#!/bin/bash
GREEN='\033[0;32m'
RED='\033[0;31m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m'
PASSWORD="admin123"

clear

echo -e "${BLUE}=====================================${NC}"
echo -e "${GREEN} LINUX SYSTEM ADMIN TOOLKIT ${NC}"
echo -e "${BLUE}=====================================${NC}"

echo ""
read -sp "Enter Password: " input
echo ""

if [ "$input" != "$PASSWORD" ]; then
    echo -e "${RED}❌ Wrong Password!${NC}"
    exit
fi
clear

echo "====================================="
echo " LINUX SYSTEM ADMIN TOOLKIT "
echo "====================================="

while true
do

echo ""
echo -e "${YELLOW}=========== MENU ===========${NC}"
echo "1. Show Date"
echo "2. Show Current User"
echo "3. Show Files"
echo "4. Disk Usage"
echo "5. Running Processes"
echo "6. Generate Report"
echo "7. Backup Script"
echo "7. Exit"


read -p "Enter your choice: " choice

case $choice in

1)
echo ""
echo "📌 Current Date:"
date
;;

2)
echo ""
echo "📌 Current User:"
whoami
;;

3)
echo ""
echo "📌 Files and Folders:"
ls
;;

4)
echo ""
echo "📌 Disk Usage:"
df -h
;;

5)
echo ""
echo "📌 Running Processes:"
ps
;;

6)
echo ""
echo "📄 Generating Report..."

report="reports/report.txt"

echo "SYSTEM REPORT" > $report
echo "Generated on: $(date)" >> $report

echo "" >> $report
echo "Current User:" >> $report
whoami >> $report

echo "" >> $report
echo "Disk Usage:" >> $report
df -h >> $report

echo "" >> $report
echo "Files and Folders:" >> $report
ls >> $report

echo ""
echo "✅ Report Saved in reports folder!"
;;

7)
echo ""
echo "📦 Backup Started..."

cp monitor.sh backup/

echo "✅ Backup Completed!"
;;

8)
echo ""
echo "👋 Exiting Program..."
exit
;;
*)
echo "❌ Invalid Choice!"
;;

esac

done
