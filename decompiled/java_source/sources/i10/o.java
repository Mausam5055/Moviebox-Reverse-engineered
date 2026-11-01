package i10;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.Map;
import org.mvel2.ConversionException;

/* JADX INFO: loaded from: classes7.dex */
public class o implements org.mvel2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map f64874a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static i10.i f64875b;

    static class a implements i10.i {
        a() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Long convert(Object obj) {
            return ((Boolean) obj).booleanValue() ? 1L : 0L;
        }
    }

    static class b implements i10.i {
        b() {
        }

        @Override // i10.i
        public Object convert(Object obj) {
            String str = (String) obj;
            if (str.length() == 0) {
                return 0L;
            }
            return Long.valueOf(Long.parseLong(str));
        }
    }

    static class c implements i10.i {
        c() {
        }

        @Override // i10.i
        public Object convert(Object obj) {
            return o.f64875b.convert(String.valueOf(obj));
        }
    }

    static class d implements i10.i {
        d() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Long convert(Object obj) {
            return Long.valueOf(((BigDecimal) obj).longValue());
        }
    }

    static class e implements i10.i {
        e() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Long convert(Object obj) {
            return Long.valueOf(((BigInteger) obj).longValue());
        }
    }

    static class f implements i10.i {
        f() {
        }

        @Override // i10.i
        public Object convert(Object obj) {
            return Long.valueOf(((Short) obj).longValue());
        }
    }

    static class g implements i10.i {
        g() {
        }

        @Override // i10.i
        public Object convert(Object obj) {
            return new Long(((Long) obj).longValue());
        }
    }

    static class h implements i10.i {
        h() {
        }

        @Override // i10.i
        public Object convert(Object obj) {
            return Long.valueOf(((Integer) obj).longValue());
        }
    }

    static class i implements i10.i {
        i() {
        }

        @Override // i10.i
        public Object convert(Object obj) {
            return Long.valueOf(((Double) obj).longValue());
        }
    }

    static class j implements i10.i {
        j() {
        }

        @Override // i10.i
        public Object convert(Object obj) {
            return Long.valueOf(((Float) obj).longValue());
        }
    }

    static {
        HashMap map = new HashMap();
        f64874a = map;
        b bVar = new b();
        f64875b = bVar;
        map.put(String.class, bVar);
        map.put(Object.class, new c());
        map.put(BigDecimal.class, new d());
        map.put(BigInteger.class, new e());
        map.put(Short.class, new f());
        map.put(Long.class, new g());
        map.put(Integer.class, new h());
        map.put(Double.class, new i());
        map.put(Float.class, new j());
        map.put(Boolean.class, new a());
    }

    @Override // org.mvel2.a
    public boolean a(Class cls) {
        return f64874a.containsKey(cls);
    }

    @Override // org.mvel2.a
    public Object b(Object obj) {
        Map map = f64874a;
        if (map.containsKey(obj.getClass())) {
            return ((i10.i) map.get(obj.getClass())).convert(obj);
        }
        throw new ConversionException("cannot convert type: " + obj.getClass().getName() + " to: " + Long.class.getName());
    }
}
