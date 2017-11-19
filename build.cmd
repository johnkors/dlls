echo off
echo ************************************
echo Build multiple console apps referencing:
cat source/classlib.netstandard/classlib.netstandard.csproj
echo ************************************

echo ************************************
echo Console apps using the new SDK:
cat source/console.new/console.new.csproj
echo ************************************

dotnet build "./source/dlls.sln" 

echo *************
echo Full framework, new SDK style csproj (4.6.1):
echo *************
ls source/console.new/bin/debug/net461/*.dll | grep dll

echo *************
echo Full framework, new SDK style csproj (4.7):
echo *************
ls source/console.new/bin/debug/net47/*.dll | grep dll

echo *************
echo Full framework, new SDK style csproj (4.7.1):
echo *************
ls source/console.new/bin/debug/net471/*.dll | grep dll

echo *************
echo NetCoreApp1.0, new SDK style csproj :
echo *************
ls source/console.new/bin/debug/netcoreapp1.0/*.dll | grep dll

echo *************
echo NetCoreApp1.1, new SDK style csproj :
echo *************
ls source/console.new/bin/debug/netcoreapp1.1/*.dll | grep dll

echo *************
echo NetCoreApp2.0, new SDK style csproj :
echo *************
ls source/console.new/bin/debug/netcoreapp2.0/*.dll | grep dll

echo  
echo *************
echo 461 Full framework project , old csproj style:
echo *************
ls source/console.fullframework.old.461/bin/debug/*.dll | grep dll

echo  
echo *************
echo 471 Full framework project , old csproj style:
echo *************
ls source/console.fullframework.old.471/bin/debug/*.dll | grep dll

