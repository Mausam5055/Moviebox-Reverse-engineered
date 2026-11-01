package c00;

import com.google.android.gms.tasks.CancellationTokenSource;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.CancellationException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.n;

/* JADX INFO: loaded from: classes6.dex */
public abstract class b {

    static final class a implements OnCompleteListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ n f16974a;

        a(n nVar) {
            this.f16974a = nVar;
        }

        @Override // com.google.android.gms.tasks.OnCompleteListener
        public final void onComplete(Task task) {
            Exception exception = task.getException();
            if (exception != null) {
                n nVar = this.f16974a;
                Result.Companion companion = Result.INSTANCE;
                nVar.resumeWith(Result.m454constructorimpl(ResultKt.a(exception)));
            } else {
                if (task.isCanceled()) {
                    n.a.a(this.f16974a, null, 1, null);
                    return;
                }
                n nVar2 = this.f16974a;
                Result.Companion companion2 = Result.INSTANCE;
                nVar2.resumeWith(Result.m454constructorimpl(task.getResult()));
            }
        }
    }

    /* JADX INFO: renamed from: c00.b$b, reason: collision with other inner class name */
    static final class C0157b implements Function1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CancellationTokenSource f16975a;

        C0157b(CancellationTokenSource cancellationTokenSource) {
            this.f16975a = cancellationTokenSource;
        }

        public final void a(Throwable th2) {
            this.f16975a.cancel();
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((Throwable) obj);
            return Unit.f67061a;
        }
    }

    public static final Object a(Task task, Continuation continuation) {
        return b(task, null, continuation);
    }

    private static final Object b(Task task, CancellationTokenSource cancellationTokenSource, Continuation continuation) throws Exception {
        if (!task.isComplete()) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
            cancellableContinuationImpl.initCancellability();
            task.addOnCompleteListener(c00.a.f16973a, new a(cancellableContinuationImpl));
            if (cancellationTokenSource != null) {
                cancellableContinuationImpl.invokeOnCancellation(new C0157b(cancellationTokenSource));
            }
            Object result = cancellableContinuationImpl.getResult();
            if (result == IntrinsicsKt.f()) {
                DebugProbesKt.c(continuation);
            }
            return result;
        }
        Exception exception = task.getException();
        if (exception != null) {
            throw exception;
        }
        if (!task.isCanceled()) {
            return task.getResult();
        }
        throw new CancellationException("Task " + task + " was cancelled normally.");
    }
}
