echo off
dotnet build "./source/dlls.sln" /v:quiet
echo *************
echo Full framework project, new SDK style csproj:
echo *************
ls source/console.fullframework.new/bin/debug/net461/*.dll | grep dll

echo *************
echo Full framework project, old csproj style:
echo *************
ls source/console.fullframework.old/bin/debug/*.dll | grep dll
echo on
