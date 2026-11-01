package kotlinx.coroutines;

import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes7.dex */
class i2 extends a {
    public i2(CoroutineContext coroutineContext, boolean z10) {
        super(coroutineContext, true, z10);
    }

    @Override // kotlinx.coroutines.JobSupport
    protected boolean handleJobException(Throwable th2) {
        k0.a(getContext(), th2);
        return true;
    }
}
