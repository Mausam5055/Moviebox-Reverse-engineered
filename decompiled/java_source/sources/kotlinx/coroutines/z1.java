package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes7.dex */
final class z1 extends i2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Continuation f68017a;

    public z1(CoroutineContext coroutineContext, Function2 function2) {
        super(coroutineContext, false);
        this.f68017a = IntrinsicsKt.a(function2, this, this);
    }

    @Override // kotlinx.coroutines.JobSupport
    protected void onStart() throws Throwable {
        b00.a.b(this.f68017a, this);
    }
}
