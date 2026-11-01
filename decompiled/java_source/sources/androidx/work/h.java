package androidx.work;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class h extends m0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h f15488a = new h();

    private h() {
    }

    @Override // androidx.work.m0
    public /* bridge */ /* synthetic */ s a(Context context, String str, WorkerParameters workerParameters) {
        return (s) e(context, str, workerParameters);
    }

    public Void e(Context appContext, String workerClassName, WorkerParameters workerParameters) {
        Intrinsics.h(appContext, "appContext");
        Intrinsics.h(workerClassName, "workerClassName");
        Intrinsics.h(workerParameters, "workerParameters");
        return null;
    }
}
