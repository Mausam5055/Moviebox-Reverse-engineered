package em;

import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes6.dex */
public class j implements com.transsion.json.o {
    @Override // com.transsion.json.o
    public Object a(com.transsion.json.m mVar, Object obj, Type type, Class cls) {
        com.transsion.json.n nVar = (com.transsion.json.n) obj;
        return nVar.a() ? Long.valueOf(nVar.longValue()) : Double.valueOf(nVar.doubleValue());
    }
}
