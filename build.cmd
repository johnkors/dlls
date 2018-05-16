echo off
echo ************************************
echo Build multiple console apps referencing:
cat source/classlib.netstandard/classlib.netstandard.csproj
echo ************************************

echo ************************************
echo Console apps using the new SDK:
cat source/console.sdk/console.sdk.csproj
echo ************************************

dotnet build "./source/dlls.sln" 

echo *************
echo Full framework, new SDK style csproj (4.6.1):
echo *************
ls source/console.sdk/bin/debug/net461/*.dll | grep dll

echo *************
echo Full framework, new SDK style csproj (4.7):
echo *************
ls source/console.sdk/bin/debug/net47/*.dll | grep dll

echo *************
echo Full framework, new SDK style csproj (4.7.1):
echo *************
ls source/console.sdk/bin/debug/net471/*.dll | grep dll

echo *************
echo NetCoreApp2.0, new SDK style csproj :
echo *************
ls source/console.sdk/bin/debug/netcoreapp2.0/*.dll | grep dll

echo  
echo *************
echo 461 Full framework project , old csproj style 12:
echo *************
ls source/console.fullframework.old.461.BuildTools12/bin/debug/*.dll | grep dll

echo  
echo *************
echo 461 Full framework project , old csproj style 15:
echo *************
ls source/console.fullframework.old.461.BuildTools15/bin/debug/*.dll | grep dll


echo  
echo *************
echo 471 Full framework project , old csproj style:
echo *************
ls source/console.fullframework.old.471.BuildTools12/bin/debug/*.dll | grep dll

