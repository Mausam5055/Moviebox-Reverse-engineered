package gf;

import java.lang.reflect.Array;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public abstract class e {
    public static int a(Object... objArr) {
        int iHashCode;
        if (objArr == null || objArr.length == 0) {
            return 0;
        }
        int iA = 0;
        for (Object obj : objArr) {
            if (obj != null) {
                if (obj instanceof Number) {
                    iHashCode = obj.hashCode();
                } else if (obj instanceof boolean[]) {
                    iHashCode = Arrays.hashCode((boolean[]) obj);
                } else if (obj instanceof byte[]) {
                    iHashCode = Arrays.hashCode((byte[]) obj);
                } else if (obj instanceof char[]) {
                    iHashCode = Arrays.hashCode((char[]) obj);
                } else if (obj instanceof short[]) {
                    iHashCode = Arrays.hashCode((short[]) obj);
                } else if (obj instanceof int[]) {
                    iHashCode = Arrays.hashCode((int[]) obj);
                } else if (obj instanceof long[]) {
                    iHashCode = Arrays.hashCode((long[]) obj);
                } else if (obj instanceof float[]) {
                    iHashCode = Arrays.hashCode((float[]) obj);
                } else if (obj instanceof double[]) {
                    iHashCode = Arrays.hashCode((double[]) obj);
                } else if (obj instanceof Object[]) {
                    iHashCode = Arrays.hashCode((Object[]) obj);
                } else if (obj.getClass().isArray()) {
                    for (int i11 = 0; i11 < Array.getLength(obj); i11++) {
                        iA += a(Array.get(obj, i11));
                    }
                } else {
                    iHashCode = obj.hashCode();
                }
                iA += iHashCode;
            }
        }
        return iA;
    }
}
