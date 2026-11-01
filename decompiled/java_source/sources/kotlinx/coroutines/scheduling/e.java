package kotlinx.coroutines.scheduling;

import java.util.concurrent.Executor;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.k1;

/* JADX INFO: loaded from: classes7.dex */
public class e extends k1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f67935b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f67936c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f67937d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f67938e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private CoroutineScheduler f67939f;

    public e() {
        this(0, 0, 0L, null, 15, null);
    }

    public e(int i11, int i12, long j11, String str) {
        this.f67935b = i11;
        this.f67936c = i12;
        this.f67937d = j11;
        this.f67938e = str;
        this.f67939f = p();
    }

    public /* synthetic */ e(int i11, int i12, long j11, String str, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this((i13 & 1) != 0 ? g.f67942c : i11, (i13 & 2) != 0 ? g.f67943d : i12, (i13 & 4) != 0 ? g.f67944e : j11, (i13 & 8) != 0 ? "CoroutineScheduler" : str);
    }

    private final CoroutineScheduler p() {
        return new CoroutineScheduler(this.f67935b, this.f67936c, this.f67937d, this.f67938e);
    }

    public void close() throws InterruptedException {
        this.f67939f.close();
    }

    @Override // kotlinx.coroutines.k1
    public Executor d() {
        return this.f67939f;
    }

    @Override // kotlinx.coroutines.i0
    public void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        CoroutineScheduler.o(this.f67939f, runnable, false, false, 6, null);
    }

    @Override // kotlinx.coroutines.i0
    public void dispatchYield(CoroutineContext coroutineContext, Runnable runnable) {
        CoroutineScheduler.o(this.f67939f, runnable, false, true, 2, null);
    }

    public final void q(Runnable runnable, boolean z10, boolean z11) {
        this.f67939f.n(runnable, z10, z11);
    }
}
