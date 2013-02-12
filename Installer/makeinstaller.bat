@ECHO OFF
SET FullVersion=1.7.1.4791
SET Version=1.7.1
SET Configuration=Release
SET SourceBase=..

echo Creating CSharp driver installer v%Version%

echo Cleaning binary directories
rmdir /s /q obj\%Configuration%
rmdir /s /q bin\%Configuration%

echo Building installer

%windir%\Microsoft.NET\Framework\v4.0.30319\msbuild.exe CSharpDriverInstaller.wixproj

echo Done Building installer v%Version%
pause
