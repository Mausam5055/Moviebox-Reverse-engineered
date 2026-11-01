import zipfile
from collections import defaultdict
from loguru import logger
logger.remove()
from androguard.core.dex import DEX

player_classes = []

with zipfile.ZipFile('moviebox-premium_v4.0.03.0930.03-an1.ca.apk') as z:
    for dex_name in [n for n in z.namelist() if n.endswith('.dex')]:
        d = DEX(z.read(dex_name))
        for cls in d.get_classes():
            cname = cls.get_name()
            if 'com/transsion/player' in cname or 'com/transsnet/downloader' in cname:
                for m in cls.get_methods():
                    mname = m.get_name()
                    if any(k in mname.lower() for k in ['play', 'stream', 'resolution', 'quality', 'subtitle', 'download', 'bitrate', 'parse']):
                        player_classes.append((cname, mname, m.get_descriptor()))

print(f'Total player/downloader methods found: {len(player_classes)}')
for c, m, desc in player_classes[:40]:
    print(f'{c} -> {m}{desc}')

