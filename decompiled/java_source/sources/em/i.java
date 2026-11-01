package em;

import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes6.dex */
public class i implements com.transsion.json.o {
    @Override // com.transsion.json.o
    public Object a(com.transsion.json.m mVar, Object obj, Type type, Class cls) {
        if (obj instanceof Number) {
            return Integer.valueOf(((Number) obj).intValue());
        }
        try {
            return Integer.valueOf(Integer.parseInt(obj.toString()));
        } catch (Exception unused) {
            throw mVar.q(obj, Integer.class);
        }
    }
}
