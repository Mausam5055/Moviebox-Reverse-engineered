package androidx.compose.ui.platform;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
final class e1 implements androidx.compose.ui.j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.compose.runtime.c1 f5778a = androidx.compose.runtime.p1.a(1.0f);

    public void a(float f11) {
        this.f5778a.setFloatValue(f11);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public Object fold(Object obj, Function2 function2) {
        return androidx.compose.ui.j.a.a(this, obj, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public CoroutineContext.Element get(CoroutineContext.Key key) {
        return androidx.compose.ui.j.a.b(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    public /* synthetic */ CoroutineContext.Key getKey() {
        return androidx.compose.ui.i.a(this);
    }

    @Override // androidx.compose.ui.j
    public float k() {
        return this.f5778a.getFloatValue();
    }

    @Override // kotlin.coroutines.CoroutineContext
    public CoroutineContext minusKey(CoroutineContext.Key key) {
        return androidx.compose.ui.j.a.c(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public CoroutineContext plus(CoroutineContext coroutineContext) {
        return androidx.compose.ui.j.a.d(this, coroutineContext);
    }
}
