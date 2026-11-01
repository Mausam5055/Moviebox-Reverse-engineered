package i10;

import java.util.HashMap;
import java.util.Map;
import org.mvel2.ConversionException;

/* JADX INFO: loaded from: classes7.dex */
public class l implements org.mvel2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map f64872a;

    static class a implements i {
        a() {
        }

        @Override // i10.i
        public Object convert(Object obj) {
            String[] strArr = (String[]) obj;
            Integer[] numArr = new Integer[strArr.length];
            for (int i11 = 0; i11 < strArr.length; i11++) {
                numArr[i11] = Integer.valueOf(Integer.parseInt(strArr[i11]));
            }
            return numArr;
        }
    }

    static class b implements i {
        b() {
        }

        @Override // i10.i
        public Object convert(Object obj) {
            Object[] objArr = (Object[]) obj;
            Integer[] numArr = new Integer[objArr.length];
            for (int i11 = 0; i11 < objArr.length; i11++) {
                numArr[i11] = Integer.valueOf(Integer.parseInt(String.valueOf(objArr[i11])));
            }
            return numArr;
        }
    }

    static {
        HashMap map = new HashMap();
        f64872a = map;
        map.put(String[].class, new a());
        map.put(Object[].class, new b());
    }

    @Override // org.mvel2.a
    public boolean a(Class cls) {
        return f64872a.containsKey(cls);
    }

    @Override // org.mvel2.a
    public Object b(Object obj) {
        Map map = f64872a;
        if (map.containsKey(obj.getClass())) {
            return ((i) map.get(obj.getClass())).convert(obj);
        }
        throw new ConversionException("cannot convert type: " + obj.getClass().getName() + " to: " + Boolean.class.getName());
    }
}
