package kotlinx.coroutines.internal;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.m2;

/* JADX INFO: loaded from: classes.dex */
public abstract class g0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final z f67855a = new z("NO_THREAD_ELEMENTS");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Function2 f67856b = new Function2() { // from class: kotlinx.coroutines.internal.d0
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return g0.d(obj, (CoroutineContext.Element) obj2);
        }
    };

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Function2 f67857c = new Function2() { // from class: kotlinx.coroutines.internal.e0
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return g0.e((m2) obj, (CoroutineContext.Element) obj2);
        }
    };

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Function2 f67858d = new Function2() { // from class: kotlinx.coroutines.internal.f0
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return g0.h((m0) obj, (CoroutineContext.Element) obj2);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object d(Object obj, CoroutineContext.Element element) {
        if (!(element instanceof m2)) {
            return obj;
        }
        Integer num = obj instanceof Integer ? (Integer) obj : null;
        int iIntValue = num != null ? num.intValue() : 1;
        return iIntValue == 0 ? element : Integer.valueOf(iIntValue + 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final m2 e(m2 m2Var, CoroutineContext.Element element) {
        if (m2Var != null) {
            return m2Var;
        }
        if (element instanceof m2) {
            return (m2) element;
        }
        return null;
    }

    public static final void f(CoroutineContext coroutineContext, Object obj) {
        if (obj == f67855a) {
            return;
        }
        if (obj instanceof m0) {
            ((m0) obj).b(coroutineContext);
            return;
        }
        Object objFold = coroutineContext.fold(null, f67857c);
        Intrinsics.f(objFold, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        ((m2) objFold).m(coroutineContext, obj);
    }

    public static final Object g(CoroutineContext coroutineContext) {
        Object objFold = coroutineContext.fold(0, f67856b);
        Intrinsics.e(objFold);
        return objFold;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final m0 h(m0 m0Var, CoroutineContext.Element element) {
        if (element instanceof m2) {
            m2 m2Var = (m2) element;
            m0Var.a(m2Var, m2Var.r(m0Var.f67876a));
        }
        return m0Var;
    }

    public static final Object i(CoroutineContext coroutineContext, Object obj) {
        if (obj == null) {
            obj = g(coroutineContext);
        }
        if (obj == 0) {
            return f67855a;
        }
        if (obj instanceof Integer) {
            return coroutineContext.fold(new m0(coroutineContext, ((Number) obj).intValue()), f67858d);
        }
        Intrinsics.f(obj, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        return ((m2) obj).r(coroutineContext);
    }
}
