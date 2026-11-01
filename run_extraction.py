import os, shutil, zipfile, hashlib

os.makedirs('decompiled/original', exist_ok=True)
os.makedirs('decompiled/raw_dex', exist_ok=True)
os.makedirs('decompiled/native_libraries', exist_ok=True)
os.makedirs('decompiled/certificates', exist_ok=True)
os.makedirs('decompiled/resources/assets', exist_ok=True)
os.makedirs('decompiled/resources/res', exist_ok=True)
os.makedirs('decompiled/embedded_files', exist_ok=True)
os.makedirs('decompiled/extracted_archives', exist_ok=True)
os.makedirs('decompiled/analysis', exist_ok=True)
os.makedirs('decompiled/logs', exist_ok=True)
os.makedirs('decompiled/smali', exist_ok=True)
os.makedirs('decompiled/java_source/sources', exist_ok=True)
os.makedirs('decompiled/java_source/jadx_resources', exist_ok=True)

apk_src = 'moviebox-premium_v4.0.03.0930.03-an1.ca.apk'
apk_dst = 'decompiled/original/original.apk'

print('Copying original APK...')
if not os.path.exists(apk_dst) or os.path.getsize(apk_dst) != os.path.getsize(apk_src):
    shutil.copyfile(apk_src, apk_dst)

log_lines = []
log_lines.append(f"Starting extraction of {apk_src}")

with zipfile.ZipFile(apk_src, 'r') as z:
    infolist = z.infolist()
    log_lines.append(f"Total archive entries: {len(infolist)}")
    
    for info in infolist:
        name = info.filename
        
        # 1. Raw DEX files
        if name.endswith('.dex') and '/' not in name:
            dest = os.path.join('decompiled/raw_dex', name)
            with open(dest, 'wb') as f:
                f.write(z.read(name))
            log_lines.append(f"Extracted raw DEX: {name} ({info.file_size} bytes)")
            
        # 2. Native libraries
        elif name.startswith('lib/'):
            parts = name.split('/')
            if len(parts) >= 2:
                arch = parts[1]
                arch_dir = os.path.join('decompiled/native_libraries', arch)
                os.makedirs(arch_dir, exist_ok=True)
                if len(parts) >= 3 and parts[2]:
                    dest = os.path.join(arch_dir, parts[2])
                    with open(dest, 'wb') as f:
                        f.write(z.read(name))
            log_lines.append(f"Extracted native library: {name}")
            
        # 3. Certificates & META-INF
        elif name.startswith('META-INF/'):
            dest = os.path.join('decompiled/certificates', os.path.basename(name))
            if not name.endswith('/'):
                with open(dest, 'wb') as f:
                    f.write(z.read(name))
                log_lines.append(f"Extracted certificate/signature: {name}")
                
        # 4. Assets
        elif name.startswith('assets/'):
            rel_path = name[len('assets/'):]
            if rel_path and not name.endswith('/'):
                dest = os.path.join('decompiled/resources/assets', rel_path)
                os.makedirs(os.path.dirname(dest), exist_ok=True)
                with open(dest, 'wb') as f:
                    f.write(z.read(name))
                log_lines.append(f"Extracted asset: {name}")
                
        # 5. resources.arsc and raw AndroidManifest.xml
        elif name in ['resources.arsc', 'AndroidManifest.xml']:
            dest = os.path.join('decompiled/resources', name)
            with open(dest, 'wb') as f:
                f.write(z.read(name))
            log_lines.append(f"Extracted raw {name} ({info.file_size} bytes)")

with open('decompiled/logs/extraction.log', 'w', encoding='utf-8') as f:
    f.write('\n'.join(log_lines))

print('Archive extraction and file preservation complete!')

