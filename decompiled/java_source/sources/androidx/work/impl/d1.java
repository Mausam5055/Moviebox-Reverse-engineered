package androidx.work.impl;

import androidx.work.WorkerParameters;
import androidx.work.impl.utils.StopWorkRunnable;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class d1 implements b1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final s f15635a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j4.c f15636b;

    public d1(s processor, j4.c workTaskExecutor) {
        Intrinsics.h(processor, "processor");
        Intrinsics.h(workTaskExecutor, "workTaskExecutor");
        this.f15635a = processor;
        this.f15636b = workTaskExecutor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(d1 d1Var, y yVar, WorkerParameters.a aVar) {
        d1Var.f15635a.r(yVar, aVar);
    }

    @Override // androidx.work.impl.b1
    public void a(final y workSpecId, final WorkerParameters.a aVar) {
        Intrinsics.h(workSpecId, "workSpecId");
        this.f15636b.d(new Runnable() { // from class: androidx.work.impl.c1
            @Override // java.lang.Runnable
            public final void run() {
                d1.g(this.f15581a, workSpecId, aVar);
            }
        });
    }

    @Override // androidx.work.impl.b1
    public /* synthetic */ void b(y yVar, int i11) {
        a1.c(this, yVar, i11);
    }

    @Override // androidx.work.impl.b1
    public /* synthetic */ void c(y yVar) {
        a1.a(this, yVar);
    }

    @Override // androidx.work.impl.b1
    public void d(y workSpecId, int i11) {
        Intrinsics.h(workSpecId, "workSpecId");
        this.f15636b.d(new StopWorkRunnable(this.f15635a, workSpecId, false, i11));
    }

    @Override // androidx.work.impl.b1
    public /* synthetic */ void e(y yVar) {
        a1.b(this, yVar);
    }
}
