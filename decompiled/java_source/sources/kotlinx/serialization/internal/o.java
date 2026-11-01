package kotlinx.serialization.internal;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public abstract class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final boolean f68175a;

    static {
        Object objM454constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(Class.forName("java.lang.ClassValue"));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m461isSuccessimpl(objM454constructorimpl)) {
            objM454constructorimpl = Boolean.TRUE;
        }
        Object objM454constructorimpl2 = Result.m454constructorimpl(objM454constructorimpl);
        Boolean bool = Boolean.FALSE;
        if (Result.m460isFailureimpl(objM454constructorimpl2)) {
            objM454constructorimpl2 = bool;
        }
        f68175a = ((Boolean) objM454constructorimpl2).booleanValue();
    }

    public static final x1 a(Function1 factory) {
        Intrinsics.h(factory, "factory");
        return f68175a ? new t(factory) : new y(factory);
    }

    public static final j1 b(Function2 factory) {
        Intrinsics.h(factory, "factory");
        return f68175a ? new v(factory) : new z(factory);
    }
}
