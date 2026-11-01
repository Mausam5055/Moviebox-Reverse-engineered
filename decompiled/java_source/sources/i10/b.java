package i10;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.MathContext;
import java.util.HashMap;
import java.util.Map;
import org.mvel2.ConversionException;

/* JADX INFO: loaded from: classes7.dex */
public class b implements org.mvel2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map f64858a;

    static class a implements i10.i {
        a() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BigDecimal convert(Object obj) {
            return new BigDecimal((String) obj, MathContext.DECIMAL128);
        }
    }

    /* JADX INFO: renamed from: i10.b$b, reason: collision with other inner class name */
    static class C0780b implements i10.i {
        C0780b() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BigDecimal convert(Object obj) {
            return new BigDecimal((char[]) obj, MathContext.DECIMAL128);
        }
    }

    static class c implements i10.i {
        c() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BigDecimal convert(Object obj) {
            return new BigDecimal(String.valueOf(obj), MathContext.DECIMAL128);
        }
    }

    static class d implements i10.i {
        d() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BigDecimal convert(Object obj) {
            return (BigDecimal) obj;
        }
    }

    static class e implements i10.i {
        e() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BigDecimal convert(Object obj) {
            return new BigDecimal(((BigInteger) obj).doubleValue(), MathContext.DECIMAL128);
        }
    }

    static class f implements i10.i {
        f() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BigDecimal convert(Object obj) {
            return new BigDecimal((String) obj, MathContext.DECIMAL128);
        }
    }

    static class g implements i10.i {
        g() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BigDecimal convert(Object obj) {
            return new BigDecimal(((Double) obj).doubleValue(), MathContext.DECIMAL128);
        }
    }

    static class h implements i10.i {
        h() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BigDecimal convert(Object obj) {
            return new BigDecimal(((Float) obj).doubleValue(), MathContext.DECIMAL128);
        }
    }

    static class i implements i10.i {
        i() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BigDecimal convert(Object obj) {
            return new BigDecimal(((Short) obj).doubleValue(), MathContext.DECIMAL128);
        }
    }

    static class j implements i10.i {
        j() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BigDecimal convert(Object obj) {
            return new BigDecimal(((Long) obj).doubleValue(), MathContext.DECIMAL128);
        }
    }

    static class k implements i10.i {
        k() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BigDecimal convert(Object obj) {
            return new BigDecimal(((Integer) obj).doubleValue(), MathContext.DECIMAL128);
        }
    }

    static {
        HashMap map = new HashMap();
        f64858a = map;
        map.put(Object.class, new c());
        map.put(BigDecimal.class, new d());
        map.put(BigInteger.class, new e());
        map.put(String.class, new f());
        map.put(Double.class, new g());
        map.put(Float.class, new h());
        map.put(Short.class, new i());
        map.put(Long.class, new j());
        map.put(Integer.class, new k());
        map.put(String.class, new a());
        map.put(char[].class, new C0780b());
    }

    @Override // org.mvel2.a
    public boolean a(Class cls) {
        return f64858a.containsKey(cls);
    }

    @Override // org.mvel2.a
    public Object b(Object obj) {
        Map map = f64858a;
        if (map.containsKey(obj.getClass())) {
            return ((i10.i) map.get(obj.getClass())).convert(obj);
        }
        throw new ConversionException("cannot convert type: " + obj.getClass().getName() + " to: " + Integer.class.getName());
    }
}
