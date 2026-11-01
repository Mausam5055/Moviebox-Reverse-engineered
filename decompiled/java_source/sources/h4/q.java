package h4;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.os.PersistableBundle;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemjob.SystemJobService;
import androidx.work.impl.model.j0;
import androidx.work.impl.model.k0;
import androidx.work.impl.model.s1;
import androidx.work.impl.model.w;
import androidx.work.impl.model.x;
import androidx.work.impl.u;
import androidx.work.t;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class q implements u {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f64365f = t.i("SystemJobScheduler");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f64366a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final JobScheduler f64367b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final o f64368c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final WorkDatabase f64369d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final androidx.work.b f64370e;

    public q(Context context, WorkDatabase workDatabase, androidx.work.b bVar) {
        this(context, workDatabase, bVar, d.c(context), new o(context, bVar.a(), bVar.s()));
    }

    public q(Context context, WorkDatabase workDatabase, androidx.work.b bVar, JobScheduler jobScheduler, o oVar) {
        this.f64366a = context;
        this.f64367b = jobScheduler;
        this.f64368c = oVar;
        this.f64369d = workDatabase;
        this.f64370e = bVar;
    }

    public static void c(Context context) {
        if (Build.VERSION.SDK_INT >= 34) {
            d.c(context).cancelAll();
        }
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        List listG = g(context, jobScheduler);
        if (listG == null || listG.isEmpty()) {
            return;
        }
        Iterator it = listG.iterator();
        while (it.hasNext()) {
            e(jobScheduler, ((JobInfo) it.next()).getId());
        }
    }

    private static void e(JobScheduler jobScheduler, int i11) {
        try {
            jobScheduler.cancel(i11);
        } catch (Throwable th2) {
            t.e().d(f64365f, String.format(Locale.getDefault(), "Exception while trying to cancel job (%d)", Integer.valueOf(i11)), th2);
        }
    }

    private static List f(Context context, JobScheduler jobScheduler, String str) {
        List<JobInfo> listG = g(context, jobScheduler);
        if (listG == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(2);
        for (JobInfo jobInfo : listG) {
            x xVarH = h(jobInfo);
            if (xVarH != null && str.equals(xVarH.b())) {
                arrayList.add(Integer.valueOf(jobInfo.getId()));
            }
        }
        return arrayList;
    }

    static List g(Context context, JobScheduler jobScheduler) {
        List<JobInfo> listB = d.b(jobScheduler);
        if (listB == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(listB.size());
        ComponentName componentName = new ComponentName(context, (Class<?>) SystemJobService.class);
        for (JobInfo jobInfo : listB) {
            if (componentName.equals(jobInfo.getService())) {
                arrayList.add(jobInfo);
            }
        }
        return arrayList;
    }

    private static x h(JobInfo jobInfo) {
        PersistableBundle extras = jobInfo.getExtras();
        if (extras == null) {
            return null;
        }
        try {
            if (!extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                return null;
            }
            return new x(extras.getString("EXTRA_WORK_SPEC_ID"), extras.getInt("EXTRA_WORK_SPEC_GENERATION", 0));
        } catch (NullPointerException unused) {
            return null;
        }
    }

    public static boolean i(Context context, WorkDatabase workDatabase) {
        JobScheduler jobSchedulerC = d.c(context);
        List<JobInfo> listG = g(context, jobSchedulerC);
        List listC = workDatabase.i0().c();
        boolean z10 = false;
        HashSet hashSet = new HashSet(listG != null ? listG.size() : 0);
        if (listG != null && !listG.isEmpty()) {
            for (JobInfo jobInfo : listG) {
                x xVarH = h(jobInfo);
                if (xVarH != null) {
                    hashSet.add(xVarH.b());
                } else {
                    e(jobSchedulerC, jobInfo.getId());
                }
            }
        }
        Iterator it = listC.iterator();
        while (it.hasNext()) {
            if (!hashSet.contains((String) it.next())) {
                t.e().a(f64365f, "Reconciling jobs");
                z10 = true;
                break;
            }
        }
        if (z10) {
            workDatabase.k();
            try {
                k0 k0VarL0 = workDatabase.l0();
                Iterator it2 = listC.iterator();
                while (it2.hasNext()) {
                    k0VarL0.o((String) it2.next(), -1L);
                }
                workDatabase.e0();
            } finally {
                workDatabase.t();
            }
        }
        return z10;
    }

    @Override // androidx.work.impl.u
    public void a(String str) {
        List listF = f(this.f64366a, this.f64367b, str);
        if (listF == null || listF.isEmpty()) {
            return;
        }
        Iterator it = listF.iterator();
        while (it.hasNext()) {
            e(this.f64367b, ((Integer) it.next()).intValue());
        }
        this.f64369d.i0().e(str);
    }

    @Override // androidx.work.impl.u
    public void b(j0... j0VarArr) {
        List listF;
        androidx.work.impl.utils.m mVar = new androidx.work.impl.utils.m(this.f64369d);
        for (j0 j0Var : j0VarArr) {
            this.f64369d.k();
            try {
                j0 j0VarJ = this.f64369d.l0().j(j0Var.f15764a);
                if (j0VarJ == null) {
                    t.e().k(f64365f, "Skipping scheduling " + j0Var.f15764a + " because it's no longer in the DB");
                    this.f64369d.e0();
                } else if (j0VarJ.f15765b != WorkInfo.State.ENQUEUED) {
                    t.e().k(f64365f, "Skipping scheduling " + j0Var.f15764a + " because it is no longer enqueued");
                    this.f64369d.e0();
                } else {
                    x xVarA = s1.a(j0Var);
                    androidx.work.impl.model.o oVarA = this.f64369d.i0().a(xVarA);
                    int iB = oVarA != null ? oVarA.f15827c : mVar.b(this.f64370e.i(), this.f64370e.g());
                    if (oVarA == null) {
                        this.f64369d.i0().d(w.a(xVarA, iB));
                    }
                    j(j0Var, iB);
                    if (Build.VERSION.SDK_INT == 23 && (listF = f(this.f64366a, this.f64367b, j0Var.f15764a)) != null) {
                        int iIndexOf = listF.indexOf(Integer.valueOf(iB));
                        if (iIndexOf >= 0) {
                            listF.remove(iIndexOf);
                        }
                        j(j0Var, !listF.isEmpty() ? ((Integer) listF.get(0)).intValue() : mVar.b(this.f64370e.i(), this.f64370e.g()));
                    }
                    this.f64369d.e0();
                }
                this.f64369d.t();
            } catch (Throwable th2) {
                this.f64369d.t();
                throw th2;
            }
        }
    }

    @Override // androidx.work.impl.u
    public boolean d() {
        return true;
    }

    public void j(j0 j0Var, int i11) {
        JobInfo jobInfoA = this.f64368c.a(j0Var, i11);
        t tVarE = t.e();
        String str = f64365f;
        tVarE.a(str, "Scheduling work ID " + j0Var.f15764a + "Job ID " + i11);
        try {
            if (this.f64367b.schedule(jobInfoA) == 0) {
                t.e().k(str, "Unable to schedule work ID " + j0Var.f15764a);
                if (j0Var.f15780q && j0Var.f15781r == OutOfQuotaPolicy.RUN_AS_NON_EXPEDITED_WORK_REQUEST) {
                    j0Var.f15780q = false;
                    t.e().a(str, String.format("Scheduling a non-expedited job (work ID %s)", j0Var.f15764a));
                    j(j0Var, i11);
                }
            }
        } catch (IllegalStateException e11) {
            String strA = d.a(this.f64366a, this.f64369d, this.f64370e);
            t.e().c(f64365f, strA);
            IllegalStateException illegalStateException = new IllegalStateException(strA, e11);
            androidx.core.util.a aVarL = this.f64370e.l();
            if (aVarL == null) {
                throw illegalStateException;
            }
            aVarL.accept(illegalStateException);
        } catch (Throwable th2) {
            t.e().d(f64365f, "Unable to schedule " + j0Var, th2);
        }
    }
}
