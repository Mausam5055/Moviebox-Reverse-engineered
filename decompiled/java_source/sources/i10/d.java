package i10;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;
import org.mvel2.ConversionException;

/* JADX INFO: loaded from: classes7.dex */
public class d implements org.mvel2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map f64860a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static i10.i f64861b;

    static class a implements i10.i {
        a() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean convert(Object obj) {
            return Boolean.valueOf(((BigDecimal) obj).doubleValue() > 0.0d);
        }
    }

    static class b implements i10.i {
        b() {
        }

        @Override // i10.i
        public Object convert(Object obj) {
            String str = (String) obj;
            return Boolean.valueOf((str.equalsIgnoreCase("false") || str.equalsIgnoreCase("no") || str.equalsIgnoreCase("off") || "0".equals(obj) || "".equals(obj)) ? false : true);
        }
    }

    static class c implements i10.i {
        c() {
        }

        @Override // i10.i
        public Object convert(Object obj) {
            return d.f64861b.convert(String.valueOf(obj));
        }
    }

    /* JADX INFO: renamed from: i10.d$d, reason: collision with other inner class name */
    static class C0782d implements i10.i {
        C0782d() {
        }

        @Override // i10.i
        public Object convert(Object obj) {
            return obj;
        }
    }

    static class e implements i10.i {
        e() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean convert(Object obj) {
            return Boolean.valueOf(((Integer) obj).intValue() > 0);
        }
    }

    static class f implements i10.i {
        f() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean convert(Object obj) {
            return Boolean.valueOf(((Float) obj).floatValue() > 0.0f);
        }
    }

    static class g implements i10.i {
        g() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean convert(Object obj) {
            return Boolean.valueOf(((Double) obj).doubleValue() > 0.0d);
        }
    }

    static class h implements i10.i {
        h() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean convert(Object obj) {
            return Boolean.valueOf(((Short) obj).shortValue() > 0);
        }
    }

    static class i implements i10.i {
        i() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean convert(Object obj) {
            return Boolean.valueOf(((Long) obj).longValue() > 0);
        }
    }

    static class j implements i10.i {
        j() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean convert(Object obj) {
            Boolean bool = (Boolean) obj;
            bool.booleanValue();
            return bool;
        }
    }

    static {
        HashMap map = new HashMap();
        f64860a = map;
        b bVar = new b();
        f64861b = bVar;
        map.put(String.class, bVar);
        map.put(Object.class, new c());
        map.put(Boolean.class, new C0782d());
        map.put(Integer.class, new e());
        map.put(Float.class, new f());
        map.put(Double.class, new g());
        map.put(Short.class, new h());
        map.put(Long.class, new i());
        map.put(Boolean.TYPE, new j());
        map.put(BigDecimal.class, new a());
    }

    @Override // org.mvel2.a
    public boolean a(Class cls) {
        return f64860a.containsKey(cls);
    }

    @Override // org.mvel2.a
    public Object b(Object obj) {
        Map map = f64860a;
        if (map.containsKey(obj.getClass())) {
            return ((i10.i) map.get(obj.getClass())).convert(obj);
        }
        throw new ConversionException("cannot convert type: " + obj.getClass().getName() + " to: " + Boolean.class.getName());
    }
}
