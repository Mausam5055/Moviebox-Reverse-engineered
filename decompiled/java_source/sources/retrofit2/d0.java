package retrofit2;

import android.os.Build;
import java.lang.reflect.Method;
import java.lang.reflect.Parameter;

/* JADX INFO: loaded from: classes7.dex */
class d0 {

    static final class a extends d0 {
        a() {
        }

        @Override // retrofit2.d0
        Object b(Method method, Class cls, Object obj, Object[] objArr) {
            if (Build.VERSION.SDK_INT >= 26) {
                return t.a(method, cls, obj, objArr);
            }
            throw new UnsupportedOperationException("Calling default methods on API 24 and 25 is not supported");
        }

        @Override // retrofit2.d0
        boolean c(Method method) {
            return method.isDefault();
        }
    }

    static class b extends d0 {
        b() {
        }

        @Override // retrofit2.d0
        String a(Method method, int i11) {
            Parameter parameter = method.getParameters()[i11];
            if (!parameter.isNamePresent()) {
                return super.a(method, i11);
            }
            return "parameter '" + parameter.getName() + '\'';
        }

        @Override // retrofit2.d0
        Object b(Method method, Class cls, Object obj, Object[] objArr) {
            return t.a(method, cls, obj, objArr);
        }

        @Override // retrofit2.d0
        boolean c(Method method) {
            return method.isDefault();
        }
    }

    d0() {
    }

    String a(Method method, int i11) {
        return "parameter #" + (i11 + 1);
    }

    Object b(Method method, Class cls, Object obj, Object[] objArr) {
        throw new AssertionError();
    }

    boolean c(Method method) {
        return false;
    }
}
