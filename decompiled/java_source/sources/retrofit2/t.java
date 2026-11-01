package retrofit2;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes7.dex */
abstract class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Constructor f74499a;

    static Object a(Method method, Class cls, Object obj, Object[] objArr) throws NoSuchMethodException {
        Constructor declaredConstructor = f74499a;
        if (declaredConstructor == null) {
            declaredConstructor = o.a().getDeclaredConstructor(Class.class, Integer.TYPE);
            declaredConstructor.setAccessible(true);
            f74499a = declaredConstructor;
        }
        return p.a(declaredConstructor.newInstance(cls, -1)).unreflectSpecial(method, cls).bindTo(obj).invokeWithArguments(objArr);
    }
}
