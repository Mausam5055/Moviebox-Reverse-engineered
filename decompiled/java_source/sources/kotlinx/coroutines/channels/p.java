package kotlinx.coroutines.channels;

import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.internal.w;
import kotlinx.coroutines.s2;

/* JADX INFO: loaded from: classes7.dex */
final class p implements s2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CancellableContinuationImpl f67698a;

    public p(CancellableContinuationImpl cancellableContinuationImpl) {
        this.f67698a = cancellableContinuationImpl;
    }

    @Override // kotlinx.coroutines.s2
    public void invokeOnCancellation(w wVar, int i11) {
        this.f67698a.invokeOnCancellation(wVar, i11);
    }
}
