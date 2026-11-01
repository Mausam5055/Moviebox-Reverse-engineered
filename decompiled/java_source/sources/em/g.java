package em;

import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes6.dex */
public class g implements com.transsion.json.o {
    @Override // com.transsion.json.o
    public Object a(com.transsion.json.m mVar, Object obj, Type type, Class cls) {
        if (obj instanceof String) {
            return Enum.valueOf((Class) type, obj.toString());
        }
        throw new com.transsion.json.k(String.format("%s:  Don't know how to convert %s to enumerated constant of %s", mVar.d(), obj, type));
    }
}
