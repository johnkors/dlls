dotnet build "./source/dlls.sln" /v:quiet
echo off
echo *************
echo Full framework project, new SDK style csproj:
echo *************
ls -hl source/console.fullframework.new/bin/debug/net461/*.dll

echo *************
echo Full framework project, old csproj style:
echo *************
ls -hl source/console.fullframework.old/bin/debug/*.dll
echo on
