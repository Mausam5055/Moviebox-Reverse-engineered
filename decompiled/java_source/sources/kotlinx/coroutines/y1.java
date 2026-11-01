package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes7.dex */
final class y1 extends s0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Continuation f68015a;

    public y1(CoroutineContext coroutineContext, Function2 function2) {
        super(coroutineContext, false);
        this.f68015a = IntrinsicsKt.a(function2, this, this);
    }

    @Override // kotlinx.coroutines.JobSupport
    protected void onStart() throws Throwable {
        b00.a.b(this.f68015a, this);
    }
}
