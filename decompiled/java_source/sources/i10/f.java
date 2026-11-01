package i10;

import java.util.HashMap;
import java.util.Map;
import org.mvel2.ConversionException;

/* JADX INFO: loaded from: classes7.dex */
public class f implements org.mvel2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map f64864a;

    static class a implements i {
        a() {
        }

        @Override // i10.i
        public Object convert(Object obj) {
            return ((String) obj).toCharArray();
        }
    }

    static {
        HashMap map = new HashMap();
        f64864a = map;
        map.put(String.class, new a());
    }

    @Override // org.mvel2.a
    public boolean a(Class cls) {
        return f64864a.containsKey(cls);
    }

    @Override // org.mvel2.a
    public Object b(Object obj) {
        Map map = f64864a;
        if (map.containsKey(obj.getClass())) {
            return ((i) map.get(obj.getClass())).convert(obj);
        }
        throw new ConversionException("cannot convert type: " + obj.getClass().getName() + " to: " + Boolean.class.getName());
    }
}
