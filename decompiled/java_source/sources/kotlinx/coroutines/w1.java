package kotlinx.coroutines;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;

/* JADX INFO: loaded from: classes7.dex */
public abstract class w1 extends LockFreeLinkedListNode implements a1, p1 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public JobSupport f68003d;

    @Override // kotlinx.coroutines.p1
    public b2 b() {
        return null;
    }

    @Override // kotlinx.coroutines.a1
    public void dispose() {
        t().removeNode$kotlinx_coroutines_core(this);
    }

    @Override // kotlinx.coroutines.p1
    public boolean isActive() {
        return true;
    }

    public final JobSupport t() {
        JobSupport jobSupport = this.f68003d;
        if (jobSupport != null) {
            return jobSupport;
        }
        Intrinsics.z("job");
        return null;
    }

    @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
    public String toString() {
        return p0.a(this) + '@' + p0.b(this) + "[job@" + p0.b(t()) + ']';
    }

    public abstract boolean u();

    public abstract void v(Throwable th2);

    public final void w(JobSupport jobSupport) {
        this.f68003d = jobSupport;
    }
}
