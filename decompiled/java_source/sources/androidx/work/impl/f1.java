package androidx.work.impl;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Build;
import androidx.p009lifecycle.LiveData;
import androidx.work.ExistingPeriodicWorkPolicy;
import androidx.work.ExistingWorkPolicy;
import androidx.work.WorkInfo;
import androidx.work.WorkManager;
import androidx.work.impl.utils.ForceStopRunnable;
import androidx.work.impl.utils.LiveDataUtils;
import androidx.work.impl.utils.StopWorkRunnable;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes2.dex */
public class f1 extends WorkManager {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final String f15651m = androidx.work.t.i("WorkManagerImpl");

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static f1 f15652n = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static f1 f15653o = null;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final Object f15654p = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f15655b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private androidx.work.b f15656c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WorkDatabase f15657d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private j4.c f15658e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List f15659f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private s f15660g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private androidx.work.impl.utils.z f15661h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f15662i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private BroadcastReceiver.PendingResult f15663j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final i4.n f15664k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final kotlinx.coroutines.n0 f15665l;

    class a implements l.a {
        a() {
        }

        @Override // l.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public WorkInfo apply(List list) {
            if (list == null || list.size() <= 0) {
                return null;
            }
            return ((androidx.work.impl.model.j0.c) list.get(0)).e();
        }
    }

    static class b {
        static boolean a(Context context) {
            return context.isDeviceProtectedStorage();
        }
    }

    public f1(Context context, androidx.work.b bVar, j4.c cVar, WorkDatabase workDatabase, List list, s sVar, i4.n nVar) {
        Context applicationContext = context.getApplicationContext();
        if (Build.VERSION.SDK_INT >= 24 && b.a(applicationContext)) {
            throw new IllegalStateException("Cannot initialize WorkManager in direct boot mode");
        }
        androidx.work.t.h(new androidx.work.t.a(bVar.j()));
        this.f15655b = applicationContext;
        this.f15658e = cVar;
        this.f15657d = workDatabase;
        this.f15660g = sVar;
        this.f15664k = nVar;
        this.f15656c = bVar;
        this.f15659f = list;
        kotlinx.coroutines.n0 n0VarF = WorkManagerImplExtKt.f(cVar);
        this.f15665l = n0VarF;
        this.f15661h = new androidx.work.impl.utils.z(this.f15657d);
        x.g(list, this.f15660g, cVar.c(), this.f15657d, bVar);
        this.f15658e.d(new ForceStopRunnable(applicationContext, this));
        UnfinishedWorkListenerKt.c(n0VarF, this.f15655b, bVar, workDatabase);
    }

    public static void h(Context context, androidx.work.b bVar) {
        synchronized (f15654p) {
            try {
                f1 f1Var = f15652n;
                if (f1Var != null && f15653o != null) {
                    throw new IllegalStateException("WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information.");
                }
                if (f1Var == null) {
                    Context applicationContext = context.getApplicationContext();
                    if (f15653o == null) {
                        f15653o = WorkManagerImplExtKt.c(applicationContext, bVar);
                    }
                    f15652n = f15653o;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static f1 n() {
        synchronized (f15654p) {
            try {
                f1 f1Var = f15652n;
                if (f1Var != null) {
                    return f1Var;
                }
                return f15653o;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static f1 o(Context context) {
        f1 f1VarN;
        synchronized (f15654p) {
            try {
                f1VarN = n();
                if (f1VarN == null) {
                    Context applicationContext = context.getApplicationContext();
                    if (!(applicationContext instanceof androidx.work.b.c)) {
                        throw new IllegalStateException("WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider.");
                    }
                    h(applicationContext, ((androidx.work.b.c) applicationContext).getWorkManagerConfiguration());
                    f1VarN = o(applicationContext);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return f1VarN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit v() {
        h4.q.c(l());
        t().l0().n();
        x.h(m(), t(), r());
        return Unit.f67061a;
    }

    @Override // androidx.work.WorkManager
    public androidx.work.h0 b(String str, ExistingWorkPolicy existingWorkPolicy, List list) {
        if (list.isEmpty()) {
            throw new IllegalArgumentException("beginUniqueWork needs at least one OneTimeWorkRequest.");
        }
        return new e0(this, str, existingWorkPolicy, list);
    }

    @Override // androidx.work.WorkManager
    public androidx.work.w d(List list) {
        if (list.isEmpty()) {
            throw new IllegalArgumentException("enqueue needs at least one WorkRequest.");
        }
        return new e0(this, list).a();
    }

    @Override // androidx.work.WorkManager
    public androidx.work.w e(String str, ExistingPeriodicWorkPolicy existingPeriodicWorkPolicy, androidx.work.b0 b0Var) {
        return existingPeriodicWorkPolicy == ExistingPeriodicWorkPolicy.UPDATE ? m1.e(this, str, b0Var) : k(str, existingPeriodicWorkPolicy, b0Var).a();
    }

    @Override // androidx.work.WorkManager
    public LiveData g(UUID uuid) {
        return LiveDataUtils.a(this.f15657d.l0().y(Collections.singletonList(uuid.toString())), new a(), this.f15658e);
    }

    public androidx.work.w j(UUID uuid) {
        return androidx.work.impl.utils.e.e(uuid, this);
    }

    public e0 k(String str, ExistingPeriodicWorkPolicy existingPeriodicWorkPolicy, androidx.work.b0 b0Var) {
        return new e0(this, str, existingPeriodicWorkPolicy == ExistingPeriodicWorkPolicy.KEEP ? ExistingWorkPolicy.KEEP : ExistingWorkPolicy.REPLACE, Collections.singletonList(b0Var));
    }

    public Context l() {
        return this.f15655b;
    }

    public androidx.work.b m() {
        return this.f15656c;
    }

    public androidx.work.impl.utils.z p() {
        return this.f15661h;
    }

    public s q() {
        return this.f15660g;
    }

    public List r() {
        return this.f15659f;
    }

    public i4.n s() {
        return this.f15664k;
    }

    public WorkDatabase t() {
        return this.f15657d;
    }

    public j4.c u() {
        return this.f15658e;
    }

    public void w() {
        synchronized (f15654p) {
            try {
                this.f15662i = true;
                BroadcastReceiver.PendingResult pendingResult = this.f15663j;
                if (pendingResult != null) {
                    pendingResult.finish();
                    this.f15663j = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void x() {
        androidx.work.g0.a(m().n(), "ReschedulingWork", new Function0() { // from class: androidx.work.impl.e1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f15648a.v();
            }
        });
    }

    public void y(BroadcastReceiver.PendingResult pendingResult) {
        synchronized (f15654p) {
            try {
                BroadcastReceiver.PendingResult pendingResult2 = this.f15663j;
                if (pendingResult2 != null) {
                    pendingResult2.finish();
                }
                this.f15663j = pendingResult;
                if (this.f15662i) {
                    pendingResult.finish();
                    this.f15663j = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void z(androidx.work.impl.model.x xVar, int i11) {
        this.f15658e.d(new StopWorkRunnable(this.f15660g, new y(xVar), true, i11));
    }
}
