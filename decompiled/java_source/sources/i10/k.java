package i10;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.Map;
import org.mvel2.ConversionException;

/* JADX INFO: loaded from: classes7.dex */
public class k implements org.mvel2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map f64870a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static i10.i f64871b;

    static class a implements i10.i {
        a() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float convert(Object obj) {
            return ((Boolean) obj).booleanValue() ? Float.valueOf(1.0f) : Float.valueOf(0.0f);
        }
    }

    static class b implements i10.i {
        b() {
        }

        @Override // i10.i
        public Object convert(Object obj) {
            String str = (String) obj;
            return str.length() == 0 ? Float.valueOf(0.0f) : Float.valueOf(Float.parseFloat(str));
        }
    }

    static class c implements i10.i {
        c() {
        }

        @Override // i10.i
        public Object convert(Object obj) {
            return k.f64871b.convert(String.valueOf(obj));
        }
    }

    static class d implements i10.i {
        d() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float convert(Object obj) {
            return Float.valueOf(((BigDecimal) obj).floatValue());
        }
    }

    static class e implements i10.i {
        e() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float convert(Object obj) {
            return Float.valueOf(((BigInteger) obj).floatValue());
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
        public Float convert(Object obj) {
            return Float.valueOf(((Integer) obj).floatValue());
        }
    }

    static class h implements i10.i {
        h() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float convert(Object obj) {
            return Float.valueOf(((Double) obj).floatValue());
        }
    }

    static class i implements i10.i {
        i() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float convert(Object obj) {
            return Float.valueOf(((Long) obj).floatValue());
        }
    }

    static class j implements i10.i {
        j() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float convert(Object obj) {
            return Float.valueOf(((Short) obj).floatValue());
        }
    }

    static {
        HashMap map = new HashMap();
        f64870a = map;
        b bVar = new b();
        f64871b = bVar;
        map.put(String.class, bVar);
        map.put(Object.class, new c());
        map.put(BigDecimal.class, new d());
        map.put(BigInteger.class, new e());
        map.put(Float.class, new f());
        map.put(Integer.class, new g());
        map.put(Double.class, new h());
        map.put(Long.class, new i());
        map.put(Short.class, new j());
        map.put(Boolean.class, new a());
    }

    @Override // org.mvel2.a
    public boolean a(Class cls) {
        return f64870a.containsKey(cls);
    }

    @Override // org.mvel2.a
    public Object b(Object obj) {
        Map map = f64870a;
        if (map.containsKey(obj.getClass())) {
            return ((i10.i) map.get(obj.getClass())).convert(obj);
        }
        throw new ConversionException("cannot convert type: " + obj.getClass().getName() + " to: " + Integer.class.getName());
    }
}
