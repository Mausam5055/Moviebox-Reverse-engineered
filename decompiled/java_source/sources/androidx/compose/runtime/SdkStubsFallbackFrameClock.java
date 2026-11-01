package androidx.compose.runtime;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
final class SdkStubsFallbackFrameClock implements u0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SdkStubsFallbackFrameClock f3663a = new SdkStubsFallbackFrameClock();

    private SdkStubsFallbackFrameClock() {
    }

    @Override // kotlin.coroutines.CoroutineContext
    public Object fold(Object obj, Function2 function2) {
        return u0.a.a(this, obj, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public CoroutineContext.Element get(CoroutineContext.Key key) {
        return u0.a.b(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    public /* synthetic */ CoroutineContext.Key getKey() {
        return t0.a(this);
    }

    @Override // androidx.compose.runtime.u0
    public Object l(Function1 function1, Continuation continuation) {
        return kotlinx.coroutines.i.g(kotlinx.coroutines.y0.c(), new SdkStubsFallbackFrameClock$withFrameNanos$2(function1, null), continuation);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public CoroutineContext minusKey(CoroutineContext.Key key) {
        return u0.a.c(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public CoroutineContext plus(CoroutineContext coroutineContext) {
        return u0.a.d(this, coroutineContext);
    }
}
