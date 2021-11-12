import subprocess
subprocess.run(
    "_build/default/main.exe",
    stdout=subprocess.PIPE,
    stderr=subprocess.PIPE,
)
