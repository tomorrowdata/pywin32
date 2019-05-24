@ECHO OFF

set PLATFORM=x86
set PYTHON_MAJOR=3
set PYTHON_MINOR=4

if "%PLATFORM%"=="x86" set VC_ARCH=x86
if "%PLATFORM%"=="x64" set VC_ARCH=amd64
if "%PYTHON_MAJOR%"=="3" if "%PYTHON_MINOR%"=="7" set VC_VERSION=14.0
if "%PYTHON_MAJOR%"=="3" if "%PYTHON_MINOR%"=="6" set VC_VERSION=14.0
if "%PYTHON_MAJOR%"=="3" if "%PYTHON_MINOR%"=="5" set VC_VERSION=14.0
if "%PYTHON_MAJOR%"=="3" if "%PYTHON_MINOR%"=="4" set VC_VERSION=10.0
if "%PYTHON_MAJOR%"=="3" if "%PYTHON_MINOR%"=="3" set VC_VERSION=10.0
if "%PYTHON_MAJOR%"=="2" if "%PYTHON_MINOR%"=="7" set VC_VERSION=9.0
if "%PYTHON_MAJOR%"=="2" if "%PYTHON_MINOR%"=="6" set VC_VERSION=9.0

call "C:\Program Files (x86)\Microsoft Visual Studio %VC_VERSION%\VC\vcvarsall.bat" %VC_ARCH%

set PYTHON_PATH=C:\Python%PYTHON_MAJOR%%PYTHON_MINOR%

if "%PLATFORM%"=="x64" set PYTHON_PATH=%PYTHON_PATH%-x64

echo
echo Python PATH:
echo %PYTHON_PATH%

set PATH=%PYTHON_PATH%;%PYTHON_PATH%\Scripts;%PATH%

echo #########
echo Checking version

python --version

echo #########
echo INSTALL DEPENDENCIES

pip install --upgrade setuptools wheel

echo #########
echo BUILD

python setup3.py build

echo #########
echo STEP: AFTER TEST

if "%PYTHON_MAJOR%"=="2" if "%PYTHON_MINOR%"=="7" python setup.py sdist
python setup3.py bdist_wheel --skip-build
python setup3.py bdist_wininst --skip-build --target-version=%PYTHON_MAJOR%.%PYTHON_MINOR%