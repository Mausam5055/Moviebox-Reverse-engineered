package em;

import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes6.dex */
public class d implements com.transsion.json.o {
    @Override // com.transsion.json.o
    public Object a(com.transsion.json.m mVar, Object obj, Type type, Class cls) {
        if (obj instanceof Number) {
            return Byte.valueOf(((Number) obj).byteValue());
        }
        throw mVar.q(obj, Byte.class);
    }
}
