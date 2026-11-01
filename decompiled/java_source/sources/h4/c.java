package h4;

import android.app.job.JobScheduler;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f64358a = new c();

    private c() {
    }

    public final JobScheduler a(JobScheduler jobScheduler) {
        Intrinsics.h(jobScheduler, "jobScheduler");
        JobScheduler jobSchedulerForNamespace = jobScheduler.forNamespace("androidx.work.systemjobscheduler");
        Intrinsics.g(jobSchedulerForNamespace, "forNamespace(...)");
        return jobSchedulerForNamespace;
    }
}
