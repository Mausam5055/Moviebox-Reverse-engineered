import zipfile, re
from collections import defaultdict

api_paths = defaultdict(set)
raw_path_regex = re.compile(rb'(?:[\x00\x01-\x1f\"])(/[a-zA-Z0-9_\-]+(?:/[a-zA-Z0-9_\-]+){1,7})(?:[\x00\x01-\x1f\"])')

with zipfile.ZipFile('moviebox-premium_v4.0.03.0930.03-an1.ca.apk') as z:
    for dex_name in [n for n in z.namelist() if n.endswith('.dex')]:
        dex_data = z.read(dex_name)
        for m in raw_path_regex.finditer(dex_data):
            p = m.group(1).decode('latin-1', errors='ignore')
            if any(k in p.lower() for k in ['/api/', '/v1/', '/v2/', '/v3/', '/v4/', '/member', '/user', '/video', '/movie', '/shorttv', '/order', '/pay', '/feed', '/play', '/auth', '/sub', '/search', '/app/', '/config/']):
                parts = [x for x in p.split('/') if x]
                if parts:
                    cat = parts[0]
                    api_paths[cat].add(p)

print(f'Total categories: {len(api_paths)}')
for cat, paths in sorted(api_paths.items(), key=lambda x: -len(x[1])):
    print(f'\n=== Category: /{cat} ({len(paths)} endpoints) ===')
    for p in sorted(paths)[:20]:
        print('  ', p)

