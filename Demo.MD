[🇷🇺 Русская версия](Demo_RU.MD) | [🇬🇧 English version](Demo.MD)

# How to Create a Portable Version of stable-diffusion-webui-amdgpu

## Step 1: Preparation

Create an empty folder for your project. This will be the root directory for your portable setup.

![image](https://github.com/user-attachments/assets/179b3a22-4319-4920-aeb5-e36bd0f16f0b)


## Step 2: Download portable-maker

1. Go to the [portable-maker releases page](https://github.com/daswer123/portable-maker/releases).
2. Choose the build for your required Python version (in this case, Python 3.10).
3. Download the [portable-maker_1_0_0_py310.zip](https://github.com/daswer123/portable-maker/releases/download/1.0.0/portable-maker_1_0_0_py310.zip) archive.

Pro tip: Always check for the latest version, as there might be newer releases with bug fixes or improvements!

![image](https://github.com/user-attachments/assets/2a8f18c9-409b-48c5-9a52-561978a19c34)

## Step 3: Extraction

Extract the downloaded archive into the folder you created in Step 1. This will set up the basic structure for your portable environment.

![image](https://github.com/user-attachments/assets/f4cc660b-c8f3-4aec-b454-a22e7fe1eae2)

## Step 4: Configure env.bat

1. Open the `env.bat` file in any text editor (Notepad++ or VSCode work great).
2. Add or modify the following lines:

```batch
set APP_FOLDER=stable-diffusion-webui-amdgpu
set REPO_URL=https://github.com/lshqqytiger/stable-diffusion-webui-amdgpu
```

3. Save the changes.

These settings tell the portable environment which project to work with and where to find it.

![image](https://github.com/user-attachments/assets/9b0f9f72-ebbe-4f8f-94fc-5cf99721f7f9)

## Step 5: Clone the Repository

Run the `clone.bat` file. This will use the settings from `env.bat` to clone the project into your portable setup.

![image](https://github.com/user-attachments/assets/3458dd69-6c6e-46ad-8ed8-9170b0495063)

## Step 6: Activate the Environment

Double-click `activate.bat` or run it through your code editor. If successful, you'll see a message confirming the activation. This sets up the necessary environment variables for your portable Python.

![image](https://github.com/user-attachments/assets/48770cee-3edf-408a-9574-4cc079c32e7e)

## Step 7: Install Dependencies

1. In the activated console, navigate to the project folder:
   ```
   cd stable-diffusion-webui-amdgpu
   ```
   or use the environment variable:
   ```
   cd %APP_FOLDER%
   ```
2. Install the required dependencies:
   ```
   pip install -r requirements.txt
   ```

Note: You might see some warnings during this process. Don't worry, they're usually harmless!

![image](https://github.com/user-attachments/assets/cc15d395-67c7-49ac-ac4a-95e8a60ab516)

![image](https://github.com/user-attachments/assets/a0056a4c-4b40-4805-a726-c89788da9c6d)


## Step 8: First Interface Launch

1. In the same console, launch the interface with:
   ```
   python launch.py --use-directml
   ```
2. Wait for all components to install and the interface to open in your browser.
3. Test one generation to ensure everything's working properly.
4. Close the console when you're done.

Pro tip: Remember to delete your test generations to keep the portable version clean!

![image](https://github.com/user-attachments/assets/deacb718-d5b0-4eca-9af0-661beab882bc)

![image](https://github.com/user-attachments/assets/509d7be7-b2e5-44d1-8402-fd12093a6dfe)

## Step 9: Configure run.bat

1. Open `run.bat` in your text editor.
2. Replace the line `%PYTHON% --version` with:
   ```batch
   python launch.py --use-directml --autolaunch
   ```
3. Save the changes and test by running the file.

Optional: If you don't want to clear the temp folder on each run, set this in `env.bat`:
```batch
set CLEAR_TEMP_EVERY_RUN=false
```

![image](https://github.com/user-attachments/assets/07022a75-5a52-4104-9725-9d88821479fc)

## Step 10: Final Preparation

1. Delete the `clone.bat` and `activate.bat` files. They're not needed for the final portable version.
2. Compress the entire folder into an archive (ZIP or 7z) for easy distribution.

![image](https://github.com/user-attachments/assets/0b674013-f1c1-488e-a0f6-87f1e4cbb1a1)
