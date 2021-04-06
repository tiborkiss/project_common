python utils\check_version.py || Exit /b
cd rg_speech_to_text
python -m venv venv
rem venv\Scripts\activate : activating venv breaks the bat file execution
venv\Scripts\python -m pip install --upgrade pip setuptools
venv\Scripts\python -m pip install torch==1.7.1+cpu torchvision==0.8.2+cpu torchaudio==0.7.2 -f https://download.pytorch.org/whl/torch_stable.html
venv\Scripts\python -m pip install -r requirements-win.txt
cd ..
cd rg_production
python -m prodVenv
rem prodVenv\Scripts\activate
prodVenv\Scripts\python -m pip install --upgrade pip setuptools
prodVenv\Scripts\python -m pip install -r requirements.txt
cd ..
