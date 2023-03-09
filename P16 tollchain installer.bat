cd %USERPROFILE%\AppData\Roaming
mkdir P16
cd P16
curl https://aka.ms/vs/17/release/vc_redist.x86.exe -JLO && vc_redist.x86.exe -q -norestart && del vc_redist.x86.exe
curl https://go.microsoft.com/fwlink/?LinkId=2085155 -JLo ndp48-web.exe && ndp48-web.exe -q -norestart && del ndp48-web.exe
mkdir p16as
mkdir p16dbg
mkdir p16sim
cd p16as
curl https://github.com/ang3lo-azevedo/P16-toolchain-installer/blob/main/files/p16as.zip?raw=true -JLo p16as.zip && tar -xf p16as.zip && del p16as.zip
cd ..\p16dbg
curl https://github.com/ang3lo-azevedo/P16-toolchain-installer/blob/main/files/p16dbg.zip?raw=true -JLo p16dbg.zip && tar -xf p16dbg.zip && del p16dbg.zip
cd ..\p16sim
curl https://github.com/ang3lo-azevedo/P16-toolchain-installer/blob/main/files/p16sim.zip?raw=true -JLo p16sim.zip && tar -xf p16sim.zip && del p16sim.zip
setx PATH "%USERPROFILE%\AppData\Roaming\P16\p16as;%USERPROFILE%\AppData\Roaming\P16\p16sim;%PATH%"
