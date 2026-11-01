package i10;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.Map;
import org.mvel2.ConversionException;

/* JADX INFO: loaded from: classes7.dex */
public class j implements org.mvel2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map f64868a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static i10.i f64869b;

    static class a implements i10.i {
        a() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Double convert(Object obj) {
            return ((Boolean) obj).booleanValue() ? Double.valueOf(1.0d) : Double.valueOf(0.0d);
        }
    }

    static class b implements i10.i {
        b() {
        }

        @Override // i10.i
        public Object convert(Object obj) {
            String str = (String) obj;
            return str.length() == 0 ? Double.valueOf(0.0d) : Double.valueOf(Double.parseDouble(str));
        }
    }

    static class c implements i10.i {
        c() {
        }

        @Override // i10.i
        public Object convert(Object obj) {
            return j.f64869b.convert(String.valueOf(obj));
        }
    }

    static class d implements i10.i {
        d() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Double convert(Object obj) {
            return Double.valueOf(((BigDecimal) obj).doubleValue());
        }
    }

    static class e implements i10.i {
        e() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Double convert(Object obj) {
            return Double.valueOf(((BigInteger) obj).doubleValue());
        }
    }

    static class f implements i10.i {
        f() {
        }

        @Override // i10.i
        public Object convert(Object obj) {
            return obj;
        }
    }

    static class g implements i10.i {
        g() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Double convert(Object obj) {
            Float f11 = (Float) obj;
            if (f11.floatValue() <= Double.MAX_VALUE) {
                return Double.valueOf(f11.doubleValue());
            }
            throw new ConversionException("cannot coerce Float to Double since the value (" + String.valueOf(obj) + ") exceeds that maximum precision of Double.");
        }
    }

    static class h implements i10.i {
        h() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Double convert(Object obj) {
            return Double.valueOf(((Integer) obj).doubleValue());
        }
    }

    static class i implements i10.i {
        i() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Double convert(Object obj) {
            return Double.valueOf(((Short) obj).doubleValue());
        }
    }

    /* JADX INFO: renamed from: i10.j$j, reason: collision with other inner class name */
    static class C0784j implements i10.i {
        C0784j() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Double convert(Object obj) {
            return Double.valueOf(((Long) obj).doubleValue());
        }
    }

    static {
        HashMap map = new HashMap();
        f64868a = map;
        b bVar = new b();
        f64869b = bVar;
        map.put(String.class, bVar);
        map.put(Object.class, new c());
        map.put(BigDecimal.class, new d());
        map.put(BigInteger.class, new e());
        map.put(Double.class, new f());
        map.put(Float.class, new g());
        map.put(Integer.class, new h());
        map.put(Short.class, new i());
        map.put(Long.class, new C0784j());
        map.put(Boolean.class, new a());
    }

    @Override // org.mvel2.a
    public boolean a(Class cls) {
        return f64868a.containsKey(cls);
    }

    @Override // org.mvel2.a
    public Object b(Object obj) {
        Map map = f64868a;
        if (map.containsKey(obj.getClass())) {
            return ((i10.i) map.get(obj.getClass())).convert(obj);
        }
        throw new ConversionException("cannot convert type: " + obj.getClass().getName() + " to: " + Integer.class.getName());
    }
}
