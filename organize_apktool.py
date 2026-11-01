import os, shutil

print('Organizing Apktool decoded output...')

# 1. Smali directories
for i in range(1, 8):
    smali_name = 'smali' if i == 1 else f'smali_classes{i}'
    src = os.path.join('temp_apktool', smali_name)
    dst = os.path.join('decompiled/smali', smali_name)
    if os.path.exists(src):
        if os.path.exists(dst):
            shutil.rmtree(dst)
        shutil.move(src, dst)
        print(f'Moved {smali_name} to decompiled/smali/')

# 2. Res directory
res_src = 'temp_apktool/res'
res_dst = 'decompiled/resources/res'
if os.path.exists(res_src):
    if os.path.exists(res_dst):
        shutil.rmtree(res_dst)
    shutil.move(res_src, res_dst)
    print('Moved res/ to decompiled/resources/res')

# 3. AndroidManifest.xml (decoded XML)
manifest_src = 'temp_apktool/AndroidManifest.xml'
manifest_dst = 'decompiled/resources/AndroidManifest.xml'
if os.path.exists(manifest_src):
    shutil.copyfile(manifest_src, manifest_dst)
    print('Copied decoded AndroidManifest.xml to decompiled/resources/')

# 4. Unknown resources
unknown_src = 'temp_apktool/unknown'
unknown_dst = 'decompiled/resources/unknown_resources'
if os.path.exists(unknown_src):
    if os.path.exists(unknown_dst):
        shutil.rmtree(unknown_dst)
    shutil.move(unknown_src, unknown_dst)
    print('Moved unknown/ to decompiled/resources/unknown_resources')

# 5. Copy apktool.yml to logs or analysis
shutil.copyfile('temp_apktool/apktool.yml', 'decompiled/logs/apktool.yml')

# 6. Copy apktool log from background task if present
task_log = 'C:/Users/rikik/.gemini/antigravity/brain/b98b5602-695b-4fe1-af4f-9ba5094ad634/.system_generated/tasks/task-330.log'
if os.path.exists(task_log):
    shutil.copyfile(task_log, 'decompiled/logs/apktool.log')

# Clean up temp_apktool
shutil.rmtree('temp_apktool')
print('Apktool organization complete and temp_apktool cleaned up!')

