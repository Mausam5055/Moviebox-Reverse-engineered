package i10;

import java.util.HashMap;
import java.util.Map;
import org.mvel2.ConversionException;

/* JADX INFO: loaded from: classes7.dex */
public class e implements org.mvel2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map f64862a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static i f64863b;

    static class a implements i {
        a() {
        }

        @Override // i10.i
        public Object convert(Object obj) {
            return Byte.valueOf(Byte.parseByte((String) obj));
        }
    }

    static class b implements i {
        b() {
        }

        @Override // i10.i
        public Object convert(Object obj) {
            return e.f64863b.convert(String.valueOf(obj));
        }
    }

    static class c implements i {
        c() {
        }

        @Override // i10.i
        public Object convert(Object obj) {
            return new Byte(((Byte) obj).byteValue());
        }
    }

    static class d implements i {
        d() {
        }

        @Override // i10.i
        public Object convert(Object obj) {
            return Byte.valueOf(((Integer) obj).byteValue());
        }
    }

    /* JADX INFO: renamed from: i10.e$e, reason: collision with other inner class name */
    static class C0783e implements i {
        C0783e() {
        }

        @Override // i10.i
        public Object convert(Object obj) {
            return Byte.valueOf(((Long) obj).byteValue());
        }
    }

    static class f implements i {
        f() {
        }

        @Override // i10.i
        public Object convert(Object obj) {
            return Byte.valueOf(((Double) obj).byteValue());
        }
    }

    static class g implements i {
        g() {
        }

        @Override // i10.i
        public Object convert(Object obj) {
            return Byte.valueOf(((Float) obj).byteValue());
        }
    }

    static class h implements i {
        h() {
        }

        @Override // i10.i
        public Object convert(Object obj) {
            return Byte.valueOf(((Short) obj).byteValue());
        }
    }

    static {
        HashMap map = new HashMap();
        f64862a = map;
        a aVar = new a();
        f64863b = aVar;
        map.put(String.class, aVar);
        map.put(Object.class, new b());
        map.put(Byte.class, new c());
        map.put(Integer.class, new d());
        map.put(Long.class, new C0783e());
        map.put(Double.class, new f());
        map.put(Float.class, new g());
        map.put(Short.class, new h());
    }

    @Override // org.mvel2.a
    public boolean a(Class cls) {
        return f64862a.containsKey(cls);
    }

    @Override // org.mvel2.a
    public Object b(Object obj) {
        Map map = f64862a;
        if (map.containsKey(obj.getClass())) {
            return ((i) map.get(obj.getClass())).convert(obj);
        }
        throw new ConversionException("cannot convert type: " + obj.getClass().getName() + " to: " + Integer.class.getName());
    }
}
