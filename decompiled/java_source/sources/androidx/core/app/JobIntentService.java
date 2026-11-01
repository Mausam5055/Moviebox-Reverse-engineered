package androidx.core.app;

import android.app.Service;
import android.app.job.JobInfo;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobServiceEngine;
import android.app.job.JobWorkItem;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build;
import android.os.IBinder;
import android.os.PowerManager;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class JobIntentService extends Service {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final Object f7946h = new Object();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    static final HashMap f7947i = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    b f7948a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    h f7949b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    a f7950c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f7951d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f7952e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f7953f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final ArrayList f7954g;

    final class a extends AsyncTask {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void doInBackground(Void... voidArr) {
            while (true) {
                e eVarA = JobIntentService.this.a();
                if (eVarA == null) {
                    return null;
                }
                JobIntentService.this.e(eVarA.getIntent());
                eVarA.a();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onCancelled(Void r11) {
            JobIntentService.this.g();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Void r11) {
            JobIntentService.this.g();
        }
    }

    interface b {
        IBinder a();

        e b();
    }

    static final class c extends h {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Context f7956d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final PowerManager.WakeLock f7957e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final PowerManager.WakeLock f7958f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        boolean f7959g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        boolean f7960h;

        c(Context context, ComponentName componentName) {
            super(componentName);
            this.f7956d = context.getApplicationContext();
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            PowerManager.WakeLock wakeLockNewWakeLock = powerManager.newWakeLock(1, componentName.getClassName() + ":launch");
            this.f7957e = wakeLockNewWakeLock;
            wakeLockNewWakeLock.setReferenceCounted(false);
            PowerManager.WakeLock wakeLockNewWakeLock2 = powerManager.newWakeLock(1, componentName.getClassName() + ":run");
            this.f7958f = wakeLockNewWakeLock2;
            wakeLockNewWakeLock2.setReferenceCounted(false);
        }

        @Override // androidx.core.app.JobIntentService.h
        public void b() {
            synchronized (this) {
                try {
                    if (this.f7960h) {
                        if (this.f7959g) {
                            this.f7957e.acquire(60000L);
                        }
                        this.f7960h = false;
                        this.f7958f.release();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override // androidx.core.app.JobIntentService.h
        public void c() {
            synchronized (this) {
                try {
                    if (!this.f7960h) {
                        this.f7960h = true;
                        this.f7958f.acquire(600000L);
                        this.f7957e.release();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override // androidx.core.app.JobIntentService.h
        public void d() {
            synchronized (this) {
                this.f7959g = false;
            }
        }
    }

    final class d implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Intent f7961a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f7962b;

        d(Intent intent, int i11) {
            this.f7961a = intent;
            this.f7962b = i11;
        }

        @Override // androidx.core.app.JobIntentService.e
        public void a() {
            JobIntentService.this.stopSelf(this.f7962b);
        }

        @Override // androidx.core.app.JobIntentService.e
        public Intent getIntent() {
            return this.f7961a;
        }
    }

    interface e {
        void a();

        Intent getIntent();
    }

    static final class f extends JobServiceEngine implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final JobIntentService f7964a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Object f7965b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        JobParameters f7966c;

        final class a implements e {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final JobWorkItem f7967a;

            a(JobWorkItem jobWorkItem) {
                this.f7967a = jobWorkItem;
            }

            @Override // androidx.core.app.JobIntentService.e
            public void a() {
                synchronized (f.this.f7965b) {
                    try {
                        JobParameters jobParameters = f.this.f7966c;
                        if (jobParameters != null) {
                            jobParameters.completeWork(this.f7967a);
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }

            @Override // androidx.core.app.JobIntentService.e
            public Intent getIntent() {
                return this.f7967a.getIntent();
            }
        }

        f(JobIntentService jobIntentService) {
            super(jobIntentService);
            this.f7965b = new Object();
            this.f7964a = jobIntentService;
        }

        @Override // androidx.core.app.JobIntentService.b
        public IBinder a() {
            return getBinder();
        }

        @Override // androidx.core.app.JobIntentService.b
        public e b() {
            synchronized (this.f7965b) {
                try {
                    JobParameters jobParameters = this.f7966c;
                    if (jobParameters == null) {
                        return null;
                    }
                    JobWorkItem jobWorkItemDequeueWork = jobParameters.dequeueWork();
                    if (jobWorkItemDequeueWork == null) {
                        return null;
                    }
                    jobWorkItemDequeueWork.getIntent().setExtrasClassLoader(this.f7964a.getClassLoader());
                    return new a(jobWorkItemDequeueWork);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public boolean onStartJob(JobParameters jobParameters) {
            this.f7966c = jobParameters;
            this.f7964a.c(false);
            return true;
        }

        public boolean onStopJob(JobParameters jobParameters) {
            boolean zB = this.f7964a.b();
            synchronized (this.f7965b) {
                this.f7966c = null;
            }
            return zB;
        }
    }

    static final class g extends h {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final JobInfo f7969d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final JobScheduler f7970e;

        g(Context context, ComponentName componentName, int i11) {
            super(componentName);
            a(i11);
            this.f7969d = new JobInfo.Builder(i11, this.f7971a).setOverrideDeadline(0L).build();
            this.f7970e = (JobScheduler) context.getApplicationContext().getSystemService("jobscheduler");
        }
    }

    static abstract class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final ComponentName f7971a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f7972b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f7973c;

        h(ComponentName componentName) {
            this.f7971a = componentName;
        }

        void a(int i11) {
            if (!this.f7972b) {
                this.f7972b = true;
                this.f7973c = i11;
            } else {
                if (this.f7973c == i11) {
                    return;
                }
                throw new IllegalArgumentException("Given job ID " + i11 + " is different than previous " + this.f7973c);
            }
        }

        public void b() {
        }

        public void c() {
        }

        public void d() {
        }
    }

    public JobIntentService() {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f7954g = null;
        } else {
            this.f7954g = new ArrayList();
        }
    }

    static h d(Context context, ComponentName componentName, boolean z10, int i11) {
        h cVar;
        HashMap map = f7947i;
        h hVar = (h) map.get(componentName);
        if (hVar == null) {
            if (Build.VERSION.SDK_INT < 26) {
                cVar = new c(context, componentName);
            } else {
                if (!z10) {
                    throw new IllegalArgumentException("Can't be here without a job id");
                }
                cVar = new g(context, componentName, i11);
            }
            hVar = cVar;
            map.put(componentName, hVar);
        }
        return hVar;
    }

    e a() {
        b bVar = this.f7948a;
        if (bVar != null) {
            return bVar.b();
        }
        synchronized (this.f7954g) {
            try {
                if (this.f7954g.size() <= 0) {
                    return null;
                }
                return (e) this.f7954g.remove(0);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    boolean b() {
        a aVar = this.f7950c;
        if (aVar != null) {
            aVar.cancel(this.f7951d);
        }
        this.f7952e = true;
        return f();
    }

    void c(boolean z10) {
        if (this.f7950c == null) {
            this.f7950c = new a();
            h hVar = this.f7949b;
            if (hVar != null && z10) {
                hVar.c();
            }
            this.f7950c.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    protected abstract void e(Intent intent);

    public boolean f() {
        return true;
    }

    void g() {
        ArrayList arrayList = this.f7954g;
        if (arrayList != null) {
            synchronized (arrayList) {
                try {
                    this.f7950c = null;
                    ArrayList arrayList2 = this.f7954g;
                    if (arrayList2 != null && arrayList2.size() > 0) {
                        c(false);
                    } else if (!this.f7953f) {
                        this.f7949b.b();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        b bVar = this.f7948a;
        if (bVar != null) {
            return bVar.a();
        }
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (Build.VERSION.SDK_INT >= 26) {
            this.f7948a = new f(this);
            this.f7949b = null;
        } else {
            this.f7948a = null;
            this.f7949b = d(this, new ComponentName(this, getClass()), false, 0);
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        ArrayList arrayList = this.f7954g;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.f7953f = true;
                this.f7949b.b();
            }
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i11, int i12) {
        if (this.f7954g == null) {
            return 2;
        }
        this.f7949b.d();
        synchronized (this.f7954g) {
            ArrayList arrayList = this.f7954g;
            if (intent == null) {
                intent = new Intent();
            }
            arrayList.add(new d(intent, i12));
            c(true);
        }
        return 3;
    }
}
