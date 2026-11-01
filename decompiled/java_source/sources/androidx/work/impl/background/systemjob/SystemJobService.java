package androidx.work.impl.background.systemjob;

import android.app.Application;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.net.Network;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.os.PersistableBundle;
import androidx.work.WorkerParameters;
import androidx.work.impl.a0;
import androidx.work.impl.b1;
import androidx.work.impl.d1;
import androidx.work.impl.e;
import androidx.work.impl.f1;
import androidx.work.impl.model.x;
import androidx.work.impl.s;
import androidx.work.impl.y;
import androidx.work.impl.z;
import androidx.work.t;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class SystemJobService extends JobService implements e {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f15573e = t.i("SystemJobService");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private f1 f15574a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f15575b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a0 f15576c = z.c(false);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b1 f15577d;

    /* JADX INFO: loaded from: classes2.dex */
    static class a {
        static String[] a(JobParameters jobParameters) {
            return jobParameters.getTriggeredContentAuthorities();
        }

        static Uri[] b(JobParameters jobParameters) {
            return jobParameters.getTriggeredContentUris();
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    static class b {
        static Network a(JobParameters jobParameters) {
            return jobParameters.getNetwork();
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    static class c {
        static int a(JobParameters jobParameters) {
            return SystemJobService.b(jobParameters.getStopReason());
        }
    }

    private static void a(String str) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            return;
        }
        throw new IllegalStateException("Cannot invoke " + str + " on a background thread");
    }

    static int b(int i11) {
        switch (i11) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return i11;
            default:
                return -512;
        }
    }

    private static x d(JobParameters jobParameters) {
        try {
            PersistableBundle extras = jobParameters.getExtras();
            if (extras == null || !extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                return null;
            }
            return new x(extras.getString("EXTRA_WORK_SPEC_ID"), extras.getInt("EXTRA_WORK_SPEC_GENERATION"));
        } catch (NullPointerException unused) {
            return null;
        }
    }

    @Override // androidx.work.impl.e
    public void c(x xVar, boolean z10) {
        a("onExecuted");
        t.e().a(f15573e, xVar.b() + " executed on JobScheduler");
        JobParameters jobParameters = (JobParameters) this.f15575b.remove(xVar);
        this.f15576c.b(xVar);
        if (jobParameters != null) {
            jobFinished(jobParameters, z10);
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        try {
            f1 f1VarO = f1.o(getApplicationContext());
            this.f15574a = f1VarO;
            s sVarQ = f1VarO.q();
            this.f15577d = new d1(sVarQ, this.f15574a.u());
            sVarQ.e(this);
        } catch (IllegalStateException e11) {
            if (!Application.class.equals(getApplication().getClass())) {
                throw new IllegalStateException("WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().", e11);
            }
            t.e().k(f15573e, "Could not find WorkManager instance; this may be because an auto-backup is in progress. Ignoring JobScheduler commands for now. Please make sure that you are initializing WorkManager if you have manually disabled WorkManagerInitializer.");
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        f1 f1Var = this.f15574a;
        if (f1Var != null) {
            f1Var.q().p(this);
        }
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        WorkerParameters.a aVar;
        a("onStartJob");
        if (this.f15574a == null) {
            t.e().a(f15573e, "WorkManager is not initialized; requesting retry.");
            jobFinished(jobParameters, true);
            return false;
        }
        x xVarD = d(jobParameters);
        if (xVarD == null) {
            t.e().c(f15573e, "WorkSpec id not found!");
            return false;
        }
        if (this.f15575b.containsKey(xVarD)) {
            t.e().a(f15573e, "Job is already being executed by SystemJobService: " + xVarD);
            return false;
        }
        t.e().a(f15573e, "onStartJob for " + xVarD);
        this.f15575b.put(xVarD, jobParameters);
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 24) {
            aVar = new WorkerParameters.a();
            if (a.b(jobParameters) != null) {
                aVar.f15414b = Arrays.asList(a.b(jobParameters));
            }
            if (a.a(jobParameters) != null) {
                aVar.f15413a = Arrays.asList(a.a(jobParameters));
            }
            if (i11 >= 28) {
                aVar.f15415c = b.a(jobParameters);
            }
        } else {
            aVar = null;
        }
        this.f15577d.a(this.f15576c.d(xVarD), aVar);
        return true;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        a("onStopJob");
        if (this.f15574a == null) {
            t.e().a(f15573e, "WorkManager is not initialized; requesting retry.");
            return true;
        }
        x xVarD = d(jobParameters);
        if (xVarD == null) {
            t.e().c(f15573e, "WorkSpec id not found!");
            return false;
        }
        t.e().a(f15573e, "onStopJob for " + xVarD);
        this.f15575b.remove(xVarD);
        y yVarB = this.f15576c.b(xVarD);
        if (yVarB != null) {
            this.f15577d.b(yVarB, Build.VERSION.SDK_INT >= 31 ? c.a(jobParameters) : -512);
        }
        return !this.f15574a.q().j(xVarD.b());
    }
}
