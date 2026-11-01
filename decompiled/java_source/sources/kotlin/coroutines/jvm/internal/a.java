package kotlin.coroutines.jvm.internal;

import java.lang.reflect.Method;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f67185a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final C0812a f67186b = new C0812a(null, null, null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static C0812a f67187c;

    /* JADX INFO: renamed from: kotlin.coroutines.jvm.internal.a$a, reason: collision with other inner class name */
    private static final class C0812a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Method f67188a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Method f67189b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Method f67190c;

        public C0812a(Method method, Method method2, Method method3) {
            this.f67188a = method;
            this.f67189b = method2;
            this.f67190c = method3;
        }
    }

    private a() {
    }

    private final C0812a a(BaseContinuationImpl baseContinuationImpl) {
        try {
            C0812a c0812a = new C0812a(Class.class.getDeclaredMethod("getModule", null), baseContinuationImpl.getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", null), baseContinuationImpl.getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod("name", null));
            f67187c = c0812a;
            return c0812a;
        } catch (Exception unused) {
            C0812a c0812a2 = f67186b;
            f67187c = c0812a2;
            return c0812a2;
        }
    }

    public final String b(BaseContinuationImpl continuation) {
        Method method;
        Object objInvoke;
        Method method2;
        Object objInvoke2;
        Intrinsics.h(continuation, "continuation");
        C0812a c0812aA = f67187c;
        if (c0812aA == null) {
            c0812aA = a(continuation);
        }
        if (c0812aA == f67186b || (method = c0812aA.f67188a) == null || (objInvoke = method.invoke(continuation.getClass(), null)) == null || (method2 = c0812aA.f67189b) == null || (objInvoke2 = method2.invoke(objInvoke, null)) == null) {
            return null;
        }
        Method method3 = c0812aA.f67190c;
        Object objInvoke3 = method3 != null ? method3.invoke(objInvoke2, null) : null;
        if (objInvoke3 instanceof String) {
            return (String) objInvoke3;
        }
        return null;
    }
}
