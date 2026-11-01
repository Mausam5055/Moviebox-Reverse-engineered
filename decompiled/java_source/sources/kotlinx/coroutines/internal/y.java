package kotlinx.coroutines.internal;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;

/* JADX INFO: loaded from: classes7.dex */
public abstract class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final StackTraceElement f67888a = new b.a().a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f67889b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f67890c;

    static {
        Object objM454constructorimpl;
        Object objM454constructorimpl2;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(BaseContinuationImpl.class.getCanonicalName());
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
            objM454constructorimpl = "kotlin.coroutines.jvm.internal.BaseContinuationImpl";
        }
        f67889b = (String) objM454constructorimpl;
        try {
            objM454constructorimpl2 = Result.m454constructorimpl(y.class.getCanonicalName());
        } catch (Throwable th3) {
            Result.Companion companion3 = Result.INSTANCE;
            objM454constructorimpl2 = Result.m454constructorimpl(ResultKt.a(th3));
        }
        if (Result.m457exceptionOrNullimpl(objM454constructorimpl2) != null) {
            objM454constructorimpl2 = "kotlinx.coroutines.internal.StackTraceRecoveryKt";
        }
        f67890c = (String) objM454constructorimpl2;
    }

    public static final Throwable a(Throwable th2) {
        return th2;
    }
}
