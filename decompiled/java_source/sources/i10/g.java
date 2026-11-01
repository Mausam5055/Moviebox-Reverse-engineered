package i10;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;
import org.mvel2.ConversionException;

/* JADX INFO: loaded from: classes7.dex */
public class g implements org.mvel2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map f64865a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final i f64866b;

    static class a implements i {
        a() {
        }

        @Override // i10.i
        public Object convert(Object obj) {
            String str = (String) obj;
            if (str.length() <= 1) {
                return Character.valueOf(str.charAt(0));
            }
            throw new ConversionException("cannot convert a string with a length greater than 1 to java.lang.Character");
        }
    }

    static class b implements i {
        b() {
        }

        @Override // i10.i
        public Object convert(Object obj) {
            return g.f64866b.convert(String.valueOf(obj));
        }
    }

    static class c implements i {
        c() {
        }

        @Override // i10.i
        public Object convert(Object obj) {
            return new Character(((Character) obj).charValue());
        }
    }

    static class d implements i {
        d() {
        }

        @Override // i10.i
        public Object convert(Object obj) {
            return Character.valueOf((char) ((BigDecimal) obj).intValue());
        }
    }

    static class e implements i {
        e() {
        }

        @Override // i10.i
        public Object convert(Object obj) {
            return Character.valueOf((char) ((Integer) obj).intValue());
        }
    }

    static {
        HashMap map = new HashMap();
        f64865a = map;
        a aVar = new a();
        f64866b = aVar;
        map.put(String.class, aVar);
        map.put(Object.class, new b());
        map.put(Character.class, new c());
        map.put(BigDecimal.class, new d());
        map.put(Integer.class, new e());
    }

    @Override // org.mvel2.a
    public boolean a(Class cls) {
        return f64865a.containsKey(cls);
    }

    @Override // org.mvel2.a
    public Object b(Object obj) {
        Map map = f64865a;
        if (map.containsKey(obj.getClass())) {
            return ((i) map.get(obj.getClass())).convert(obj);
        }
        throw new ConversionException("cannot convert type: " + obj.getClass().getName() + " to: " + Integer.class.getName());
    }
}
