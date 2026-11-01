package i10;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes7.dex */
public class n implements org.mvel2.a {
    @Override // org.mvel2.a
    public boolean a(Class cls) {
        return cls.isArray() || Collection.class.isAssignableFrom(cls) || Iterable.class.isAssignableFrom(cls);
    }

    @Override // org.mvel2.a
    public Object b(Object obj) {
        Class<?> cls = obj.getClass();
        ArrayList arrayList = new ArrayList();
        if (cls.isArray()) {
            arrayList.addAll(Arrays.asList((Object[]) obj));
        } else if (Collection.class.isAssignableFrom(cls)) {
            arrayList.addAll((Collection) obj);
        } else if (Iterable.class.isAssignableFrom(cls)) {
            Iterator it = ((Iterable) obj).iterator();
            while (it.hasNext()) {
                arrayList.add(it.next());
            }
        }
        return arrayList;
    }
}
