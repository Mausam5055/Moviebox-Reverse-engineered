package h4;

import android.app.job.JobInfo;
import android.content.ComponentName;
import android.content.Context;
import android.net.NetworkRequest;
import android.os.Build;
import android.os.PersistableBundle;
import androidx.work.BackoffPolicy;
import androidx.work.NetworkType;
import androidx.work.impl.background.systemjob.SystemJobService;
import androidx.work.impl.model.j0;
import androidx.work.t;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
class o {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f64360d = t.i("SystemJobInfoConverter");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ComponentName f64361a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.work.a f64362b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f64363c;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f64364a;

        static {
            int[] iArr = new int[NetworkType.values().length];
            f64364a = iArr;
            try {
                iArr[NetworkType.NOT_REQUIRED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f64364a[NetworkType.CONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f64364a[NetworkType.UNMETERED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f64364a[NetworkType.NOT_ROAMING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f64364a[NetworkType.METERED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    o(Context context, androidx.work.a aVar, boolean z10) {
        this.f64362b = aVar;
        this.f64361a = new ComponentName(context.getApplicationContext(), (Class<?>) SystemJobService.class);
        this.f64363c = z10;
    }

    private static JobInfo.TriggerContentUri b(androidx.work.d.c cVar) {
        boolean zB = cVar.b();
        m.a();
        return l.a(cVar.a(), zB ? 1 : 0);
    }

    static int c(NetworkType networkType) {
        int i11 = a.f64364a[networkType.ordinal()];
        if (i11 == 1) {
            return 0;
        }
        if (i11 == 2) {
            return 1;
        }
        if (i11 == 3) {
            return 2;
        }
        if (i11 != 4) {
            if (i11 == 5 && Build.VERSION.SDK_INT >= 26) {
                return 4;
            }
        } else if (Build.VERSION.SDK_INT >= 24) {
            return 3;
        }
        t.e().a(f64360d, "API version too low. Cannot convert network type value " + networkType);
        return 1;
    }

    static void d(JobInfo.Builder builder, NetworkType networkType) {
        if (Build.VERSION.SDK_INT < 30 || networkType != NetworkType.TEMPORARILY_UNMETERED) {
            builder.setRequiredNetworkType(c(networkType));
        } else {
            builder.setRequiredNetwork(new NetworkRequest.Builder().addCapability(25).build());
        }
    }

    JobInfo a(j0 j0Var, int i11) {
        String strL;
        androidx.work.d dVar = j0Var.f15773j;
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString("EXTRA_WORK_SPEC_ID", j0Var.f15764a);
        persistableBundle.putInt("EXTRA_WORK_SPEC_GENERATION", j0Var.g());
        persistableBundle.putBoolean("EXTRA_IS_PERIODIC", j0Var.o());
        JobInfo.Builder extras = new JobInfo.Builder(i11, this.f64361a).setRequiresCharging(dVar.i()).setRequiresDeviceIdle(dVar.j()).setExtras(persistableBundle);
        NetworkRequest networkRequestD = dVar.d();
        int i12 = Build.VERSION.SDK_INT;
        if (i12 < 28 || networkRequestD == null) {
            d(extras, dVar.f());
        } else {
            p.a(extras, networkRequestD);
        }
        if (!dVar.j()) {
            extras.setBackoffCriteria(j0Var.f15776m, j0Var.f15775l == BackoffPolicy.LINEAR ? 0 : 1);
        }
        long jMax = Math.max(j0Var.c() - this.f64362b.currentTimeMillis(), 0L);
        if (i12 <= 28 || jMax > 0) {
            extras.setMinimumLatency(jMax);
        } else if (!j0Var.f15780q && this.f64363c) {
            extras.setImportantWhileForeground(true);
        }
        if (i12 >= 24 && dVar.g()) {
            Iterator it = dVar.c().iterator();
            while (it.hasNext()) {
                extras.addTriggerContentUri(b((androidx.work.d.c) it.next()));
            }
            extras.setTriggerContentUpdateDelay(dVar.b());
            extras.setTriggerContentMaxDelay(dVar.a());
        }
        extras.setPersisted(false);
        int i13 = Build.VERSION.SDK_INT;
        if (i13 >= 26) {
            extras.setRequiresBatteryNotLow(dVar.h());
            extras.setRequiresStorageNotLow(dVar.k());
        }
        boolean z10 = j0Var.f15774k > 0;
        boolean z11 = jMax > 0;
        if (i13 >= 31 && j0Var.f15780q && !z10 && !z11) {
            extras.setExpedited(true);
        }
        if (i13 >= 35 && (strL = j0Var.l()) != null) {
            extras.setTraceTag(strL);
        }
        return extras.build();
    }
}
