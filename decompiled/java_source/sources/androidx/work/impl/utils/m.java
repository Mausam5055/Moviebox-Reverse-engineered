package androidx.work.impl.utils;

import androidx.work.impl.WorkDatabase;
import java.util.concurrent.Callable;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WorkDatabase f15992a;

    public m(WorkDatabase workDatabase) {
        Intrinsics.h(workDatabase, "workDatabase");
        this.f15992a = workDatabase;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Integer c(m mVar, int i11, int i12) {
        int iD = n.d(mVar.f15992a, "next_job_scheduler_id");
        if (i11 > iD || iD > i12) {
            n.e(mVar.f15992a, "next_job_scheduler_id", i11 + 1);
        } else {
            i11 = iD;
        }
        return Integer.valueOf(i11);
    }

    public final int b(final int i11, final int i12) {
        Object objY = this.f15992a.Y(new Callable() { // from class: androidx.work.impl.utils.l
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return m.c(this.f15989a, i11, i12);
            }
        });
        Intrinsics.g(objY, "runInTransaction(...)");
        return ((Number) objY).intValue();
    }
}
