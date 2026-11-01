package androidx.work;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class m0 {
    private static final s c(Context context, String str, WorkerParameters workerParameters) {
        try {
            Object objNewInstance = d(str).getDeclaredConstructor(Context.class, WorkerParameters.class).newInstance(context, workerParameters);
            Intrinsics.e(objNewInstance);
            return (s) objNewInstance;
        } catch (Throwable th2) {
            t.e().d(n0.f16031a, "Could not instantiate " + str, th2);
            throw th2;
        }
    }

    private static final Class d(String str) {
        try {
            Class<? extends U> clsAsSubclass = Class.forName(str).asSubclass(s.class);
            Intrinsics.e(clsAsSubclass);
            return clsAsSubclass;
        } catch (Throwable th2) {
            t.e().d(n0.f16031a, "Invalid class: " + str, th2);
            throw th2;
        }
    }

    public abstract s a(Context context, String str, WorkerParameters workerParameters);

    public final s b(Context appContext, String workerClassName, WorkerParameters workerParameters) {
        Intrinsics.h(appContext, "appContext");
        Intrinsics.h(workerClassName, "workerClassName");
        Intrinsics.h(workerParameters, "workerParameters");
        s sVarA = a(appContext, workerClassName, workerParameters);
        if (sVarA == null) {
            sVarA = c(appContext, workerClassName, workerParameters);
        }
        if (!sVarA.i()) {
            return sVarA;
        }
        throw new IllegalStateException("WorkerFactory (" + getClass().getName() + ") returned an instance of a ListenableWorker (" + workerClassName + ") which has already been invoked. createWorker() must always return a new instance of a ListenableWorker.");
    }
}
