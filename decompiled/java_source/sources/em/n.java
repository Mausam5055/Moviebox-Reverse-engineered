package em;

import java.lang.reflect.Type;
import java.util.Collection;
import java.util.HashSet;

/* JADX INFO: loaded from: classes6.dex */
public class n implements com.transsion.json.o {
    @Override // com.transsion.json.o
    public Object a(com.transsion.json.m mVar, Object obj, Type type, Class cls) {
        if (obj instanceof Collection) {
            return mVar.o((Collection) obj, new HashSet(), type);
        }
        HashSet hashSet = new HashSet();
        hashSet.add(mVar.i(obj));
        return hashSet;
    }
}
