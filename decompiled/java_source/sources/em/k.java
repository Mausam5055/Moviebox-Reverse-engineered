package em;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;

/* JADX INFO: loaded from: classes6.dex */
public class k implements com.transsion.json.o {
    @Override // com.transsion.json.o
    public Object a(com.transsion.json.m mVar, Object obj, Type type, Class cls) {
        if (obj instanceof Collection) {
            return mVar.o((Collection) obj, new ArrayList(), type);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(mVar.i(obj));
        return arrayList;
    }
}
