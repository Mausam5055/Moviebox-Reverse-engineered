package i10;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.Map;
import org.mvel2.ConversionException;

/* JADX INFO: loaded from: classes7.dex */
public class r implements org.mvel2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Short f64876a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Short f64877b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static i10.i f64878c = new b();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Map f64879d;

    static class a implements i10.i {
        a() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Short convert(Object obj) {
            return ((Boolean) obj).booleanValue() ? r.f64876a : r.f64877b;
        }
    }

    static class b implements i10.i {
        b() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Short convert(Object obj) {
            return Short.valueOf(Short.parseShort((String) obj));
        }
    }

    static class c implements i10.i {
        c() {
        }

        @Override // i10.i
        public Object convert(Object obj) {
            return r.f64878c.convert(String.valueOf(obj));
        }
    }

    static class d implements i10.i {
        d() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Short convert(Object obj) {
            return Short.valueOf(((BigDecimal) obj).shortValue());
        }
    }

    static class e implements i10.i {
        e() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Short convert(Object obj) {
            return Short.valueOf(((BigInteger) obj).shortValue());
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
        public Short convert(Object obj) {
            Integer num = (Integer) obj;
            if (num.intValue() <= 32767) {
                return Short.valueOf(num.shortValue());
            }
            throw new ConversionException("cannot coerce Integer to Short since the value (" + String.valueOf(obj) + ") exceeds that maximum precision of Integer.");
        }
    }

    static class h implements i10.i {
        h() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Short convert(Object obj) {
            Float f11 = (Float) obj;
            if (f11.floatValue() <= 32767.0f) {
                return Short.valueOf(f11.shortValue());
            }
            throw new ConversionException("cannot coerce Float to Short since the value (" + String.valueOf(obj) + ") exceeds that maximum precision of Integer.");
        }
    }

    static class i implements i10.i {
        i() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Short convert(Object obj) {
            Double d11 = (Double) obj;
            if (d11.doubleValue() <= 32767.0d) {
                return Short.valueOf(d11.shortValue());
            }
            throw new ConversionException("cannot coerce Double to Short since the value (" + String.valueOf(obj) + ") exceeds that maximum precision of Integer.");
        }
    }

    static class j implements i10.i {
        j() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Short convert(Object obj) {
            Long l11 = (Long) obj;
            if (l11.longValue() <= 32767) {
                return Short.valueOf(l11.shortValue());
            }
            throw new ConversionException("cannot coerce Integer to Short since the value (" + String.valueOf(obj) + ") exceeds that maximum precision of Integer.");
        }
    }

    static {
        HashMap map = new HashMap();
        f64879d = map;
        map.put(String.class, f64878c);
        map.put(Object.class, new c());
        map.put(BigDecimal.class, new d());
        map.put(BigInteger.class, new e());
        map.put(Short.class, new f());
        map.put(Integer.class, new g());
        map.put(Float.class, new h());
        map.put(Double.class, new i());
        map.put(Long.class, new j());
        map.put(Boolean.class, new a());
    }

    @Override // org.mvel2.a
    public boolean a(Class cls) {
        return f64879d.containsKey(cls);
    }

    @Override // org.mvel2.a
    public Object b(Object obj) {
        Map map = f64879d;
        if (map.containsKey(obj.getClass())) {
            return ((i10.i) map.get(obj.getClass())).convert(obj);
        }
        throw new ConversionException("cannot convert type: " + obj.getClass().getName() + " to: " + Short.class.getName());
    }
}
