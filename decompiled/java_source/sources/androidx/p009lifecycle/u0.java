package androidx.p009lifecycle;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import q1.a;
import q1.b;
import q1.e;

/* JADX INFO: loaded from: classes.dex */
public abstract class u0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final e f9648a = new e();

    public static final n0 a(t0 t0Var) {
        a aVarA;
        Intrinsics.h(t0Var, "<this>");
        synchronized (f9648a) {
            aVarA = (a) t0Var.getCloseable("androidx.lifecycle.viewmodel.internal.ViewModelCoroutineScope.JOB_KEY");
            if (aVarA == null) {
                aVarA = b.a();
                t0Var.addCloseable("androidx.lifecycle.viewmodel.internal.ViewModelCoroutineScope.JOB_KEY", aVarA);
            }
        }
        return aVarA;
    }
}
