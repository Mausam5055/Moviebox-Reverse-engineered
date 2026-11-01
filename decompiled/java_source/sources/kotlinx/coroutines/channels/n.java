package kotlinx.coroutines.channels;

import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.k0;

/* JADX INFO: loaded from: classes7.dex */
final class n extends e implements o {
    public n(CoroutineContext coroutineContext, d dVar) {
        super(coroutineContext, dVar, true, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.a
    /* JADX INFO: renamed from: Z, reason: merged with bridge method [inline-methods] */
    public void onCompleted(Unit unit) {
        r.a.a(Y(), null, 1, null);
    }

    @Override // kotlinx.coroutines.channels.o
    public /* bridge */ /* synthetic */ r d() {
        return X();
    }

    @Override // kotlinx.coroutines.a, kotlinx.coroutines.JobSupport, kotlinx.coroutines.t1
    public boolean isActive() {
        return super.isActive();
    }

    @Override // kotlinx.coroutines.a
    protected void onCancelled(Throwable th2, boolean z10) {
        if (Y().j(th2) || z10) {
            return;
        }
        k0.a(getContext(), th2);
    }
}
