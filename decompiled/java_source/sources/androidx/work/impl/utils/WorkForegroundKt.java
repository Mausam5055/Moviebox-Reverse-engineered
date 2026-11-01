package androidx.work.impl.utils;

import android.content.Context;
import android.os.Build;
import androidx.work.impl.model.j0;
import java.util.concurrent.Executor;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.m1;

/* JADX INFO: loaded from: classes2.dex */
public abstract class WorkForegroundKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f15939a;

    static {
        String strI = androidx.work.t.i("WorkForegroundRunnable");
        Intrinsics.g(strI, "tagWithPrefix(...)");
        f15939a = strI;
    }

    public static final Object b(Context context, j0 j0Var, androidx.work.s sVar, androidx.work.j jVar, j4.c cVar, Continuation continuation) {
        if (!j0Var.f15780q || Build.VERSION.SDK_INT >= 31) {
            return Unit.f67061a;
        }
        Executor executorA = cVar.a();
        Intrinsics.g(executorA, "getMainThreadExecutor(...)");
        Object objG = kotlinx.coroutines.i.g(m1.b(executorA), new WorkForegroundKt$workForeground$2(sVar, j0Var, jVar, context, null), continuation);
        return objG == IntrinsicsKt.f() ? objG : Unit.f67061a;
    }
}
