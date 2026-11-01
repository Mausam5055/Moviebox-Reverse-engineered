import zipfile, re
from collections import defaultdict
from loguru import logger
logger.remove()
from androguard.core.dex import DEX

router_paths = set()
database_tables = set()
retrofit_interfaces = []

with zipfile.ZipFile('moviebox-premium_v4.0.03.0930.03-an1.ca.apk') as z:
    for dex_name in [n for n in z.namelist() if n.endswith('.dex')]:
        dex_bytes = z.read(dex_name)
        d = DEX(dex_bytes)
        for s in d.get_strings():
            # TheRouter paths
            if s.startswith('/') and len(s) > 3 and not s.startswith('/system') and not s.startswith('/data'):
                if any(x in s for x in ['/home/', '/movie/', '/member/', '/user/', '/shorttv/', '/player/', '/video/', '/setting/', '/search/', '/feed/', '/login/', '/dialog/', '/web/']):
                    router_paths.add(s)
            # SQLite / Room table creations or queries
            if 'CREATE TABLE' in s.upper():
                database_tables.add(s)

print(f'=== FOUND {len(router_paths)} ROUTER / NAVIGATION PATHS ===')
for p in sorted(router_paths):
    print(' ', p)

print(f'\n=== FOUND {len(database_tables)} DATABASE TABLES / SCHEMAS ===')
for t in sorted(database_tables):
    print('---')
    print(t[:300])

