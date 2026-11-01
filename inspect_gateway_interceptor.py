import zipfile
from loguru import logger
logger.remove()
from androguard.core.dex import DEX

with zipfile.ZipFile('moviebox-premium_v4.0.03.0930.03-an1.ca.apk') as z:
    for dex_name in [n for n in z.namelist() if n.endswith('.dex')]:
        d = DEX(z.read(dex_name))
        for cls in d.get_classes():
            if cls.get_name() == 'Lcom/transsion/api/gateway/interceptor/GatewayInterceptor;':
                print('Found GatewayInterceptor in', dex_name)
                for m in cls.get_methods():
                    print('Method:', m.get_name(), m.get_descriptor())
                    code = m.get_code()
                    if code and m.get_name() == 'intercept':
                        for ins in code.get_bc().get_instructions():
                            out = ins.get_output()
                            if any(k in out for k in ['header', 'Header', 'add', 'put', 'token', 'sign', 'Sign', 'gateway']):
                                print('  ', ins.get_name(), out)

