@echo off
setlocal
set PATH=C:\Program Files (x86)\Git\bin\;%PATH%
call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\vc\vcvarsall.bat" x86
msbuild /tv:14.0 /p:BuildSignedSharpDX=false /t:Build /verbosity:diag /clp:ErrorsOnly /fl /flp:Summary;Verbosity=minimal;logfile=BuildErrors.log;Append=true %* SharpDX.build
