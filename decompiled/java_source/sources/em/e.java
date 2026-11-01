package em;

import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes6.dex */
public class e implements com.transsion.json.o {
    @Override // com.transsion.json.o
    public Object a(com.transsion.json.m mVar, Object obj, Type type, Class cls) {
        return Character.valueOf(obj.toString().charAt(0));
    }
}
