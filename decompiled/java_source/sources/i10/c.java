package i10;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.Map;
import org.mvel2.ConversionException;

/* JADX INFO: loaded from: classes7.dex */
public class c implements org.mvel2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map f64859a;

    static class a implements i10.i {
        a() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BigInteger convert(Object obj) {
            return new BigInteger(String.valueOf(obj));
        }
    }

    static class b implements i10.i {
        b() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BigInteger convert(Object obj) {
            return (BigInteger) obj;
        }
    }

    /* JADX INFO: renamed from: i10.c$c, reason: collision with other inner class name */
    static class C0781c implements i10.i {
        C0781c() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BigInteger convert(Object obj) {
            return ((BigDecimal) obj).toBigInteger();
        }
    }

    static class d implements i10.i {
        d() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BigInteger convert(Object obj) {
            return new BigInteger((String) obj);
        }
    }

    static class e implements i10.i {
        e() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BigInteger convert(Object obj) {
            return new BigInteger(String.valueOf(obj));
        }
    }

    static class f implements i10.i {
        f() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BigInteger convert(Object obj) {
            return new BigInteger(String.valueOf(obj));
        }
    }

    static class g implements i10.i {
        g() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BigInteger convert(Object obj) {
            return new BigInteger(String.valueOf(obj));
        }
    }

    static class h implements i10.i {
        h() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BigInteger convert(Object obj) {
            return new BigInteger((String) obj);
        }
    }

    static class i implements i10.i {
        i() {
        }

        @Override // i10.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BigInteger convert(Object obj) {
            return new BigInteger(new String((char[]) obj));
        }
    }

    static {
        HashMap map = new HashMap();
        f64859a = map;
        map.put(Object.class, new a());
        map.put(BigInteger.class, new b());
        map.put(BigDecimal.class, new C0781c());
        map.put(String.class, new d());
        map.put(Short.class, new e());
        map.put(Long.class, new f());
        map.put(Integer.class, new g());
        map.put(String.class, new h());
        map.put(char[].class, new i());
    }

    @Override // org.mvel2.a
    public boolean a(Class cls) {
        return f64859a.containsKey(cls);
    }

    @Override // org.mvel2.a
    public Object b(Object obj) {
        Map map = f64859a;
        if (map.containsKey(obj.getClass())) {
            return ((i10.i) map.get(obj.getClass())).convert(obj);
        }
        throw new ConversionException("cannot convert type: " + obj.getClass().getName() + " to: " + Integer.class.getName());
    }
}
