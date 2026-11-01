package b00;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.internal.g;

/* JADX INFO: loaded from: classes6.dex */
public abstract class a {
    private static final void a(Continuation continuation, Throwable th2) throws Throwable {
        Result.Companion companion = Result.INSTANCE;
        continuation.resumeWith(Result.m454constructorimpl(ResultKt.a(th2)));
        throw th2;
    }

    public static final void b(Continuation continuation, Continuation continuation2) throws Throwable {
        try {
            Continuation continuationC = IntrinsicsKt.c(continuation);
            Result.Companion companion = Result.INSTANCE;
            g.b(continuationC, Result.m454constructorimpl(Unit.f67061a));
        } catch (Throwable th2) {
            a(continuation2, th2);
        }
    }

    public static final void c(Function2 function2, Object obj, Continuation continuation) {
        try {
            Continuation continuationC = IntrinsicsKt.c(IntrinsicsKt.a(function2, obj, continuation));
            Result.Companion companion = Result.INSTANCE;
            g.b(continuationC, Result.m454constructorimpl(Unit.f67061a));
        } catch (Throwable th2) {
            a(continuation, th2);
        }
    }
}
