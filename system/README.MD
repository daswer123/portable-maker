# How to Change Python Version

There are two methods to change the Python version used in the project: automatic and manual.

## Automatic Method

1. Run the `reinstall_python.bat` file located in the project root directory.
2. Follow the on-screen instructions to select and install the desired Python version.

This method will automatically handle the download, extraction, and setup of the new Python version.

## Manual Method

If you prefer to change the Python version manually, follow these steps:

1. Delete all contents of the `python` folder in the `system` directory.

2. Download the desired Python version from one of the following links:

   - Python 3.12.6:
     https://github.com/bjia56/portable-python/releases/download/cpython-v3.12.6-build.5/python-full-3.12.6-windows-x86_64.zip

   - Python 3.11.10:
     https://github.com/bjia56/portable-python/releases/download/cpython-v3.11.10-build.1/python-full-3.11.10-windows-x86_64.zip

   - Python 3.10.14:
     https://github.com/bjia56/portable-python/releases/download/cpython-v3.10.14-build.5/python-3.10.14-windows-x86_64.zip

   - Python 3.9.19:
     https://github.com/bjia56/portable-python/releases/download/cpython-v3.9.19-build.5/python-3.9.19-windows-x86_64.zip

   - Python 3.8.18:
     https://github.com/bjia56/portable-python/releases/download/v3.8.18-build.0/python-3.8.18-windows-x86_64.zip

3. After downloading, extract all files from the archive directly into the `python` folder.

4. Once completed, the project will use the new Python version.

Note: Ensure that the chosen Python version is compatible with your project's dependencies.

Regardless of the method you choose, changing the Python version will reset the environment to a clean state, similar to deleting and recreating a virtual environment. This means all previously installed dependencies will be removed.