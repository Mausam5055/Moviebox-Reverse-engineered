package a5;

import com.alibaba.fastjson.JSONException;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Iterator;
import z4.b2;

/* JADX INFO: loaded from: classes2.dex */
public class w implements b2 {
    public static Object a(y4.a aVar) {
        y4.b bVar = aVar.f78831f;
        if (bVar.q0() == 4) {
            String strK0 = bVar.k0();
            bVar.c0(16);
            return strK0.toCharArray();
        }
        if (bVar.q0() == 2) {
            Number numberO0 = bVar.o0();
            bVar.c0(16);
            return numberO0.toString().toCharArray();
        }
        Object objT = aVar.T();
        if (objT instanceof String) {
            return ((String) objT).toCharArray();
        }
        if (!(objT instanceof Collection)) {
            if (objT == null) {
                return null;
            }
            return com.alibaba.fastjson.a.toJSONString(objT).toCharArray();
        }
        Collection collection = (Collection) objT;
        for (Object obj : collection) {
            if ((obj instanceof String) && ((String) obj).length() != 1) {
                throw new JSONException("can not cast to char[]");
            }
        }
        char[] cArr = new char[collection.size()];
        Iterator it = collection.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            cArr[i11] = ((String) it.next()).charAt(0);
            i11++;
        }
        return cArr;
    }

    @Override // z4.b2
    public int b() {
        return 4;
    }

    @Override // z4.b2
    public Object c(y4.a aVar, Type type, Object obj) {
        return a(aVar);
    }
}
