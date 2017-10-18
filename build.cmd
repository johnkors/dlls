echo off
dotnet build "./source/dlls.sln" /v:quiet


echo *************
echo Full framework project, new SDK style csproj (4.6.1):
echo *************
ls source/console.fullframework.new/bin/debug/net461/*.dll | grep dll

echo *************
echo Full framework project, new SDK style csproj (4.7):
echo *************
ls source/console.fullframework.new/bin/debug/net47/*.dll | grep dll

echo *************
echo Full framework project, new SDK style csproj (4.7.1):
echo *************
ls source/console.fullframework.new/bin/debug/net471/*.dll | grep dll

echo  
echo *************
echo Full framework project, old csproj style:
echo *************
ls source/console.fullframework.old/bin/debug/*.dll | grep dll

