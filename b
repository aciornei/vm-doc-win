rmdir /S /Q "C:\Program Files\VM-Doc"
mkdir "C:\Program Files\VM-Doc"
mkdir "C:\Program Files\VM-Doc\Agent"

echo test>"C:\Program Files\VM-Doc\Agent\test.txt"

copy /Y vm-doc-agent.exe "C:\Program Files\VM-Doc\Agent\test.bin"

copy /Y vm-doc-agent.exe "C:\Program Files\VM-Doc\Agent\test.exe"

copy /Y vm-doc-agent.exe "C:\Program Files\VM-Doc\Agent\vm-doc-agent.exe"

icacls "C:\Program Files\VM-Doc"
icacls "C:\Program Files\VM-Doc\Agent"


wevtutil qe Microsoft-Windows-CodeIntegrity/Operational /c:10 /rd:true /f:text

wevtutil qe Microsoft-Windows-AppLocker/EXE^ and^ DLL /c:10 /rd:true /f:text
