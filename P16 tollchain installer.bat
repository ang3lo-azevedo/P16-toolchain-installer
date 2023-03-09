@echo off
cd %USERPROFILE%\AppData\Roaming
echo A criar pasta P16
mkdir P16
cd P16
cls
echo A instalar Microsoft Visual C++ Redistributable para Visual Studio 2019
curl https://aka.ms/vs/17/release/vc_redist.x86.exe -JLO && vc_redist.x86.exe -q -norestart && del vc_redist.x86.exe
cls
echo A instalar a framework .NET da Microsoft
curl https://go.microsoft.com/fwlink/?LinkId=2085155 -JLo ndp48-web.exe && ndp48-web.exe -q -norestart && del ndp48-web.exe
cls
echo A criar pasta p16as
mkdir p16as
cls
echo A criar pasta p16dbg
mkdir p16dbg
cls
echo A criar pasta p16sim
mkdir p16sim
cls
cd p16as
echo A obter ficheiros do p16sim, a extrair e eliminar o zip
curl https://github.com/ang3lo-azevedo/P16-toolchain-installer/blob/main/files/p16as.zip?raw=true -JLo p16as.zip && tar -xf p16as.zip && del p16as.zip
cd ..\p16dbg
cls
echo A obter ficheiros do p16db, a extrair e eliminar o zip
curl https://github.com/ang3lo-azevedo/P16-toolchain-installer/blob/main/files/p16dbg.zip?raw=true -JLo p16dbg.zip && tar -xf p16dbg.zip && del p16dbg.zip
cd ..\p16sim
cls
echo A obter ficheiros do p16sim, a extrair e eliminar o zip
curl https://github.com/ang3lo-azevedo/P16-toolchain-installer/blob/main/files/p16sim.zip?raw=true -JLo p16sim.zip && tar -xf p16sim.zip && del p16sim.zip
cls
echo A adicionar os caminhos à variável de ambiente PATH
setx PATH "%USERPROFILE%\AppData\Roaming\P16\p16as;%USERPROFILE%\AppData\Roaming\P16\p16sim;%PATH%"
