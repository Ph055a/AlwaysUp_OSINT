echo "[*] Enter domain to start brute forcing"
echo "[*] Example: hackerone.com"
echo
read TARGET

REDIRECT="~/Lists/PayloadsAllTheThings/Open Redirect/Intruder/Open-Redirect-payloads.txt"
COMMAND_INJECT="~/Lists/PayloadsAllTheThings/Command Injection/Intruder/command_exec.txt"
UNIX_COMMAND_INJECT="~/Lists/PayloadsAllTheThings/Command Injection/Intruder/command-execution-unix.txt"
### XSS
BRUTE_LOGIC_JS="~/Lists/PayloadsAllTheThings/XSS Injection/Intruders/BRUTELOGIC-XSS-JS.txt"
BRUTE_LOGIC_STRINGS="~/Lists/PayloadsAllTheThings/XSS Injection/Intruders/BRUTELOGIC-XSS-STRINGS.txt "
INTRUDER_XSS="~/Lists/PayloadsAllTheThings/XSS Injection/Intruders/IntruderXSS.txt"
JHADDIX_XSS="~/Lists/PayloadsAllTheThings/XSS Injection/Intruders/JHADDIX_XSS.txt"
ALERT_XSS="~/Lists/PayloadsAllTheThings/XSS Injection/Intruders/xss_alert.txt"
XSS_PAYLOADS_QUICK="~/Lists/PayloadsAllTheThings/XSS Injection/Intruders/xss_payloads_quick.txt"
XSS_PAYLOADS_POLYGLOTS="~/Lists/PayloadsAllTheThings/XSS Injection/Intruders/xss_Polyglots.txt"
XSS_SWF="~/Lists/PayloadsAllTheThings/XSS Injection/Intruders/xss_swf_fuzz.txt"


gospider -s $TARGET >> -c 10 -d 1

cat testing.tx | httprobe >> up.txt

cat up.txt | qsreplace -a $REDIRECT >> attack.txt