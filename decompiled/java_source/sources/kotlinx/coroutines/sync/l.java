package kotlinx.coroutines.sync;

import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.internal.w;

/* JADX INFO: loaded from: classes7.dex */
final class l extends w {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final /* synthetic */ AtomicReferenceArray f67995e;

    public l(long j11, l lVar, int i11) {
        super(j11, lVar, i11);
        this.f67995e = new AtomicReferenceArray(k.f67994f);
    }

    @Override // kotlinx.coroutines.internal.w
    public int r() {
        return k.f67994f;
    }

    @Override // kotlinx.coroutines.internal.w
    public void s(int i11, Throwable th2, CoroutineContext coroutineContext) {
        v().set(i11, k.f67993e);
        t();
    }

    public String toString() {
        return "SemaphoreSegment[id=" + this.f67887c + ", hashCode=" + hashCode() + ']';
    }

    public final /* synthetic */ AtomicReferenceArray v() {
        return this.f67995e;
    }
}
