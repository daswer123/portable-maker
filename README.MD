# Python Portable Project Creator

![English](https://img.shields.io/badge/Language-English-blue.svg)
[![Russian](https://img.shields.io/badge/Language-Russian-red.svg)](README_RU.md)

This tool allows you to create portable Python environments that can be easily distributed as archives. It streamlines the process of setting up and sharing Python projects with minimal configuration.

## Getting Started

1. Download the Python Portable Project Creator:
   - Download the latest release from [Releases](https://github.com/your-repo/releases)

2. Extract the downloaded archive to your desired location.

3. Copy your project files into the `your-project` folder within the extracted structure.

## Project Structure

```
project-root/
│
├── system/
│   ├── python/
│   ├── git/
│   ├── ffmpeg/
│   ├── ssh/
│   └── user/
│
├── your-project/
│
├── tmp/
│
├── activate.bat
├── clone.bat
├── env.bat
├── run.bat
├── update.bat
└── clean.bat
```

## Configuration

1. Configure `env.bat`:
   Edit the following variables:
   - `APP_FOLDER`: Name of your project folder
   - `REPO_URL`: URL of your Git repository
   - `RESET_WHEN_UPDATE`: Set to "true" to reset changes on update
   - `PRIVATE_REPO`: Set to "true" for private repositories
   - `GITHUB_SSH_PATH`: Path to your SSH key (default is `id_ed`, change if different)
   - `CLEAR_TEMP_EVERY_RUN`: Set to "true" to clear temporary files before each run (default)

2. For private repositories:
   - Create `system/ssh` folder if it doesn't exist
   - Add your SSH key to `system/ssh`
   - Ensure `PRIVATE_REPO=true` in `env.bat`
   - Update `REPO_URL` in `env.bat` to use SSH URL

3. Run `activate.bat` to set up the Python environment.

4. Install dependencies:
   In the activated environment, run:
   ```
   pip install -r requirements.txt
   ```

5. Configure `run.bat`:
   Specify your main Python file and any command-line arguments.

6. Test the setup:
   Run your project using `run.bat`.

7. Prepare for distribution:
   - Delete `activate.bat` and `clone.bat`
   - Compress the entire folder into an archive

## Additional Information

- This setup uses a portable Python installation instead of a traditional `venv`.
- To change the Python version, refer to `system/README.md`.
- The project includes a portable Git installation for version control.
- `clean.bat` is included to clean temporary files manually if needed.
- You can customize `env.bat` with additional variables as needed.

This semi-automated setup allows for quick deployment of portable Python environments while providing flexibility for project-specific configurations.