package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes7.dex */
public final class e1 extends kotlinx.coroutines.flow.internal.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f67777a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Continuation f67778b;

    @Override // kotlinx.coroutines.flow.internal.c
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public boolean a(SharedFlowImpl sharedFlowImpl) {
        if (this.f67777a >= 0) {
            return false;
        }
        this.f67777a = sharedFlowImpl.Y();
        return true;
    }

    @Override // kotlinx.coroutines.flow.internal.c
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public Continuation[] b(SharedFlowImpl sharedFlowImpl) {
        long j11 = this.f67777a;
        this.f67777a = -1L;
        this.f67778b = null;
        return sharedFlowImpl.X(j11);
    }
}
