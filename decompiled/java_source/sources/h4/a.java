package h4;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f64357a = new a();

    private a() {
    }

    public final List a(JobScheduler jobScheduler) {
        Intrinsics.h(jobScheduler, "jobScheduler");
        List<JobInfo> allPendingJobs = jobScheduler.getAllPendingJobs();
        Intrinsics.g(allPendingJobs, "getAllPendingJobs(...)");
        return allPendingJobs;
    }
}
