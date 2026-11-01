package kotlinx.coroutines;

/* JADX INFO: loaded from: classes7.dex */
final class s extends w1 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CancellableContinuationImpl f67916e;

    public s(CancellableContinuationImpl cancellableContinuationImpl) {
        this.f67916e = cancellableContinuationImpl;
    }

    @Override // kotlinx.coroutines.w1
    public boolean u() {
        return true;
    }

    @Override // kotlinx.coroutines.w1
    public void v(Throwable th2) {
        CancellableContinuationImpl cancellableContinuationImpl = this.f67916e;
        cancellableContinuationImpl.parentCancelled$kotlinx_coroutines_core(cancellableContinuationImpl.getContinuationCancellationCause(t()));
    }
}
