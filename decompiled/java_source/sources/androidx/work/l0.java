package androidx.work;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f16024a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final WorkerParameters f16025b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Throwable f16026c;

    public l0(String workerClassName, WorkerParameters workerParameters, Throwable throwable) {
        Intrinsics.h(workerClassName, "workerClassName");
        Intrinsics.h(workerParameters, "workerParameters");
        Intrinsics.h(throwable, "throwable");
        this.f16024a = workerClassName;
        this.f16025b = workerParameters;
        this.f16026c = throwable;
    }
}
