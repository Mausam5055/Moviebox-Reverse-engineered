package h4;

import android.app.job.JobScheduler;
import android.content.Context;
import android.os.Build;
import androidx.work.impl.WorkDatabase;
import androidx.work.t;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f64359a;

    static {
        String strI = t.i("SystemJobScheduler");
        Intrinsics.g(strI, "tagWithPrefix(...)");
        f64359a = strI;
    }

    public static final String a(Context context, WorkDatabase workDatabase, androidx.work.b configuration) {
        String str;
        Intrinsics.h(context, "context");
        Intrinsics.h(workDatabase, "workDatabase");
        Intrinsics.h(configuration, "configuration");
        int i11 = Build.VERSION.SDK_INT;
        int i12 = i11 >= 31 ? 150 : 100;
        int size = workDatabase.l0().g().size();
        String strS0 = "<faulty JobScheduler failed to getPendingJobs>";
        if (i11 >= 34) {
            JobScheduler jobSchedulerC = c(context);
            List listB = b(jobSchedulerC);
            if (listB != null) {
                List listG = q.g(context, jobSchedulerC);
                int size2 = listG != null ? listB.size() - listG.size() : 0;
                String str2 = null;
                if (size2 == 0) {
                    str = null;
                } else {
                    str = size2 + " of which are not owned by WorkManager";
                }
                Object systemService = context.getSystemService("jobscheduler");
                Intrinsics.f(systemService, "null cannot be cast to non-null type android.app.job.JobScheduler");
                List listG2 = q.g(context, (JobScheduler) systemService);
                int size3 = listG2 != null ? listG2.size() : 0;
                if (size3 != 0) {
                    str2 = size3 + " from WorkManager in the default namespace";
                }
                strS0 = CollectionsKt.s0(CollectionsKt.p(listB.size() + " jobs in \"androidx.work.systemjobscheduler\" namespace", str, str2), ",\n", null, null, 0, null, null, 62, null);
            }
        } else {
            List listG3 = q.g(context, c(context));
            if (listG3 != null) {
                strS0 = listG3.size() + " jobs from WorkManager";
            }
        }
        return "JobScheduler " + i12 + " job limit exceeded.\nIn JobScheduler there are " + strS0 + ".\nThere are " + size + " jobs tracked by WorkManager's database;\nthe Configuration limit is " + configuration.h() + '.';
    }

    public static final List b(JobScheduler jobScheduler) {
        Intrinsics.h(jobScheduler, "<this>");
        try {
            return a.f64357a.a(jobScheduler);
        } catch (Throwable th2) {
            t.e().d(f64359a, "getAllPendingJobs() is not reliable on this device.", th2);
            return null;
        }
    }

    public static final JobScheduler c(Context context) {
        Intrinsics.h(context, "<this>");
        Object systemService = context.getSystemService("jobscheduler");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.app.job.JobScheduler");
        JobScheduler jobScheduler = (JobScheduler) systemService;
        return Build.VERSION.SDK_INT >= 34 ? c.f64358a.a(jobScheduler) : jobScheduler;
    }
}
