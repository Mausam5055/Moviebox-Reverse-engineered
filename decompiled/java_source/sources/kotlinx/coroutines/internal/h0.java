package kotlinx.coroutines.internal;

import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.m2;

/* JADX INFO: loaded from: classes7.dex */
public final class h0 implements m2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f67859a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ThreadLocal f67860b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final CoroutineContext.Key f67861c;

    public h0(Object obj, ThreadLocal threadLocal) {
        this.f67859a = obj;
        this.f67860b = threadLocal;
        this.f67861c = new i0(threadLocal);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public Object fold(Object obj, Function2 function2) {
        return m2.a.a(this, obj, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public CoroutineContext.Element get(CoroutineContext.Key key) {
        if (!Intrinsics.c(getKey(), key)) {
            return null;
        }
        Intrinsics.f(this, "null cannot be cast to non-null type E of kotlinx.coroutines.internal.ThreadLocalElement.get");
        return this;
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    public CoroutineContext.Key getKey() {
        return this.f67861c;
    }

    @Override // kotlinx.coroutines.m2
    public void m(CoroutineContext coroutineContext, Object obj) {
        this.f67860b.set(obj);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public CoroutineContext minusKey(CoroutineContext.Key key) {
        return Intrinsics.c(getKey(), key) ? EmptyCoroutineContext.INSTANCE : this;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public CoroutineContext plus(CoroutineContext coroutineContext) {
        return m2.a.b(this, coroutineContext);
    }

    @Override // kotlinx.coroutines.m2
    public Object r(CoroutineContext coroutineContext) {
        Object obj = this.f67860b.get();
        this.f67860b.set(this.f67859a);
        return obj;
    }

    public String toString() {
        return "ThreadLocal(value=" + this.f67859a + ", threadLocal = " + this.f67860b + ')';
    }
}
