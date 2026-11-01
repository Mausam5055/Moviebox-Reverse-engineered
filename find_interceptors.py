import zipfile
from loguru import logger
logger.remove()
from androguard.core.dex import DEX

interceptors = []

with zipfile.ZipFile('moviebox-premium_v4.0.03.0930.03-an1.ca.apk') as z:
    for dex_name in [n for n in z.namelist() if n.endswith('.dex')]:
        d = DEX(z.read(dex_name))
        for cls in d.get_classes():
            cname = cls.get_name()
            if 'transsion' in cname and ('Interceptor' in cname or 'Header' in cname or 'Sign' in cname or 'Auth' in cname):
                # check if implements okhttp3/Interceptor
                if 'Lokhttp3/Interceptor;' in cls.get_interfaces():
                    print('Found Interceptor:', cname)
                    for m in cls.get_methods():
                        if m.get_name() == 'intercept':
                            print('   method:', m.get_name(), m.get_descriptor())

