package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.JobCancellationException;
import kotlinx.coroutines.JobSupport;

/* JADX INFO: loaded from: classes7.dex */
public abstract class e extends kotlinx.coroutines.a implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f67689a;

    public e(CoroutineContext coroutineContext, d dVar, boolean z10, boolean z11) {
        super(coroutineContext, z10, z11);
        this.f67689a = dVar;
    }

    public final d X() {
        return this;
    }

    protected final d Y() {
        return this.f67689a;
    }

    @Override // kotlinx.coroutines.channels.r
    public void a(Function1 function1) {
        this.f67689a.a(function1);
    }

    @Override // kotlinx.coroutines.channels.r
    public Object c(Object obj) {
        return this.f67689a.c(obj);
    }

    @Override // kotlinx.coroutines.JobSupport
    public /* synthetic */ void cancel() {
        cancelInternal(new JobCancellationException(cancellationExceptionMessage(), null, this));
    }

    @Override // kotlinx.coroutines.JobSupport, kotlinx.coroutines.t1
    public final void cancel(CancellationException cancellationException) {
        if (isCancelled()) {
            return;
        }
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(cancellationExceptionMessage(), null, this);
        }
        cancelInternal(cancellationException);
    }

    @Override // kotlinx.coroutines.JobSupport
    public final /* synthetic */ boolean cancel(Throwable th2) {
        cancelInternal(new JobCancellationException(cancellationExceptionMessage(), null, this));
        return true;
    }

    @Override // kotlinx.coroutines.JobSupport
    public void cancelInternal(Throwable th2) {
        CancellationException cancellationException$default = JobSupport.toCancellationException$default(this, th2, null, 1, null);
        this.f67689a.cancel(cancellationException$default);
        cancelCoroutine(cancellationException$default);
    }

    @Override // kotlinx.coroutines.channels.q
    public Object e() {
        return this.f67689a.e();
    }

    @Override // kotlinx.coroutines.channels.q
    public Object f(Continuation continuation) {
        Object objF = this.f67689a.f(continuation);
        IntrinsicsKt.f();
        return objF;
    }

    @Override // kotlinx.coroutines.channels.q
    public Object g(Continuation continuation) {
        return this.f67689a.g(continuation);
    }

    @Override // kotlinx.coroutines.channels.q
    public f iterator() {
        return this.f67689a.iterator();
    }

    @Override // kotlinx.coroutines.channels.r
    public boolean j(Throwable th2) {
        return this.f67689a.j(th2);
    }

    @Override // kotlinx.coroutines.channels.r
    public Object p(Object obj, Continuation continuation) {
        return this.f67689a.p(obj, continuation);
    }

    @Override // kotlinx.coroutines.channels.r
    public boolean q() {
        return this.f67689a.q();
    }
}
