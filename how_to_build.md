## How to Build 
In order to build the executable different requirements 
need to be satisfied. 


### Building for Python27 (pywWin b223)
It is recommended to start from a clean Virtual Machine and install 
the fallowing:

- [Python 2.7](https://www.python.org/download/releases/2.7/)
- Installation of VC (Microsoft Visual Studio) 9.0
- [Windows 7 SDK ](https://www.microsoft.com/en-us/download/details.aspx?id=8279)

Then, run the **appveyor_27.bat** in order to build the distribution.

### Building for Python34 (pyWin b223)
It is recommended to start from a clean Virtual Machine and install 
the fallowing:

- [Python 3.4](https://www.python.org/download/releases/3.4/)
- Installation of VC (Microsoft Visual Studio) 10.0
- [Windows 7 SDK ](https://www.microsoft.com/en-us/download/details.aspx?id=8279) or [Windows 8 SDK]() (this is recommended if the 
target is for windows 8 or above with pyWin34 version b224, for windows Xp version use the 7.1 SDK)

Then, run the **appveyor_34.bat** in order to build the distribution.