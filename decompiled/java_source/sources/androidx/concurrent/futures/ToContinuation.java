package androidx.concurrent.futures;

import com.google.common.util.concurrent.r;
import java.util.concurrent.ExecutionException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\t\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B#\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bR\u001d\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\f\u001a\u0004\b\r\u0010\u000eR\u001d\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Landroidx/concurrent/futures/ToContinuation;", "T", "Ljava/lang/Runnable;", "Lcom/google/common/util/concurrent/r;", "futureToObserve", "Lkotlinx/coroutines/n;", "continuation", "<init>", "(Lcom/google/common/util/concurrent/r;Lkotlinx/coroutines/n;)V", "", "run", "()V", "Lcom/google/common/util/concurrent/r;", "getFutureToObserve", "()Lcom/google/common/util/concurrent/r;", "Lkotlinx/coroutines/n;", "getContinuation", "()Lkotlinx/coroutines/n;", "concurrent-futures-ktx"}, k = 1, mv = {1, 4, 0})
final class ToContinuation<T> implements Runnable {
    private final n continuation;
    private final r futureToObserve;

    public ToContinuation(r futureToObserve, n continuation) {
        Intrinsics.i(futureToObserve, "futureToObserve");
        Intrinsics.i(continuation, "continuation");
        this.futureToObserve = futureToObserve;
        this.continuation = continuation;
    }

    public final n getContinuation() {
        return this.continuation;
    }

    public final r getFutureToObserve() {
        return this.futureToObserve;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.futureToObserve.isCancelled()) {
            n.a.a(this.continuation, null, 1, null);
            return;
        }
        try {
            n nVar = this.continuation;
            Result.Companion companion = Result.INSTANCE;
            nVar.resumeWith(Result.m454constructorimpl(AbstractResolvableFuture.p(this.futureToObserve)));
        } catch (ExecutionException e11) {
            n nVar2 = this.continuation;
            Throwable thC = ListenableFutureKt.c(e11);
            Result.Companion companion2 = Result.INSTANCE;
            nVar2.resumeWith(Result.m454constructorimpl(ResultKt.a(thC)));
        }
    }
}
