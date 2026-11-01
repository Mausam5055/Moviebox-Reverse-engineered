package em;

import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes6.dex */
public class l implements com.transsion.json.o {
    @Override // com.transsion.json.o
    public Object a(com.transsion.json.m mVar, Object obj, Type type, Class cls) {
        if (obj instanceof Number) {
            return Long.valueOf(((Number) obj).longValue());
        }
        try {
            return Long.valueOf(Long.parseLong(obj.toString()));
        } catch (Exception unused) {
            throw mVar.q(obj, Long.class);
        }
    }
}
