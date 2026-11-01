package com.transsion.push.service;

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
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class JobIntentService extends Service {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final Object f50875h = new Object();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    static final HashMap f50876i = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    b f50877a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    h f50878b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    a f50879c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f50880d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f50881e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f50882f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final ArrayList f50883g;

    /* JADX INFO: loaded from: classes6.dex */
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
                try {
                    JobIntentService.this.e(eVarA.getIntent());
                    eVarA.a();
                } catch (Exception unused) {
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onCancelled(Void r11) {
            JobIntentService.this.f();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Void r11) {
            JobIntentService.this.f();
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    interface b {
        IBinder a();

        e b();
    }

    /* JADX INFO: loaded from: classes6.dex */
    static final class c extends h {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Context f50885d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final PowerManager.WakeLock f50886e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final PowerManager.WakeLock f50887f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        boolean f50888g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        boolean f50889h;

        c(Context context, ComponentName componentName) {
            super(componentName);
            this.f50885d = context.getApplicationContext();
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            PowerManager.WakeLock wakeLockNewWakeLock = powerManager.newWakeLock(1, componentName.getClassName() + ":launch");
            this.f50886e = wakeLockNewWakeLock;
            wakeLockNewWakeLock.setReferenceCounted(false);
            PowerManager.WakeLock wakeLockNewWakeLock2 = powerManager.newWakeLock(1, componentName.getClassName() + ":run");
            this.f50887f = wakeLockNewWakeLock2;
            wakeLockNewWakeLock2.setReferenceCounted(false);
        }

        @Override // com.transsion.push.service.JobIntentService.h
        void a(Intent intent) {
            Intent intent2 = new Intent(intent);
            intent2.setComponent(this.f50900a);
            if (this.f50885d.startService(intent2) != null) {
                synchronized (this) {
                    try {
                        if (!this.f50888g) {
                            this.f50888g = true;
                            if (!this.f50889h) {
                                this.f50886e.acquire(60000L);
                            }
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }

        @Override // com.transsion.push.service.JobIntentService.h
        public void c() {
            synchronized (this) {
                try {
                    if (this.f50889h) {
                        if (this.f50888g) {
                            this.f50886e.acquire(60000L);
                        }
                        this.f50889h = false;
                        this.f50887f.release();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override // com.transsion.push.service.JobIntentService.h
        public void d() {
            synchronized (this) {
                try {
                    if (!this.f50889h) {
                        this.f50889h = true;
                        this.f50887f.acquire(600000L);
                        this.f50886e.release();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override // com.transsion.push.service.JobIntentService.h
        public void e() {
            synchronized (this) {
                this.f50888g = false;
            }
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    final class d implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Intent f50890a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f50891b;

        d(Intent intent, int i11) {
            this.f50890a = intent;
            this.f50891b = i11;
        }

        @Override // com.transsion.push.service.JobIntentService.e
        public void a() {
            JobIntentService.this.stopSelf(this.f50891b);
        }

        @Override // com.transsion.push.service.JobIntentService.e
        public Intent getIntent() {
            return this.f50890a;
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    interface e {
        void a();

        Intent getIntent();
    }

    /* JADX INFO: loaded from: classes6.dex */
    static final class f extends JobServiceEngine implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final JobIntentService f50893a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Object f50894b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        JobParameters f50895c;

        final class a implements e {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final JobWorkItem f50896a;

            a(JobWorkItem jobWorkItem) {
                this.f50896a = jobWorkItem;
            }

            @Override // com.transsion.push.service.JobIntentService.e
            public void a() {
                synchronized (f.this.f50894b) {
                    JobParameters jobParameters = f.this.f50895c;
                    if (jobParameters != null) {
                        try {
                            jobParameters.completeWork(this.f50896a);
                        } catch (IllegalArgumentException e11) {
                            Log.e("JobServiceEngineImpl", "IllegalArgumentException: Failed to run mParams.completeWork(mJobWork)!", e11);
                        } catch (SecurityException e12) {
                            Log.e("JobServiceEngineImpl", "SecurityException: Failed to run mParams.completeWork(mJobWork)!", e12);
                        }
                    }
                }
            }

            @Override // com.transsion.push.service.JobIntentService.e
            public Intent getIntent() {
                return this.f50896a.getIntent();
            }
        }

        f(JobIntentService jobIntentService) {
            super(jobIntentService);
            this.f50894b = new Object();
            this.f50893a = jobIntentService;
        }

        @Override // com.transsion.push.service.JobIntentService.b
        public IBinder a() {
            return getBinder();
        }

        @Override // com.transsion.push.service.JobIntentService.b
        public e b() {
            synchronized (this.f50894b) {
                JobParameters jobParameters = this.f50895c;
                if (jobParameters == null) {
                    return null;
                }
                try {
                    JobWorkItem jobWorkItemDequeueWork = jobParameters.dequeueWork();
                    if (jobWorkItemDequeueWork == null) {
                        return null;
                    }
                    jobWorkItemDequeueWork.getIntent().setExtrasClassLoader(this.f50893a.getClassLoader());
                    return new a(jobWorkItemDequeueWork);
                } catch (SecurityException e11) {
                    Log.e("JobServiceEngineImpl", "Failed to run mParams.dequeueWork()!", e11);
                    return null;
                }
            }
        }

        public boolean onStartJob(JobParameters jobParameters) {
            this.f50895c = jobParameters;
            this.f50893a.c(false);
            return true;
        }

        public boolean onStopJob(JobParameters jobParameters) {
            boolean zB = this.f50893a.b();
            synchronized (this.f50894b) {
                this.f50895c = null;
            }
            return zB;
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    static final class g extends h {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final JobInfo f50898d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final JobScheduler f50899e;

        g(Context context, ComponentName componentName, int i11) {
            super(componentName);
            b(i11);
            this.f50898d = new JobInfo.Builder(i11, this.f50900a).setOverrideDeadline(0L).build();
            this.f50899e = (JobScheduler) context.getApplicationContext().getSystemService("jobscheduler");
        }

        @Override // com.transsion.push.service.JobIntentService.h
        void a(Intent intent) {
            this.f50899e.enqueue(this.f50898d, com.transsion.push.service.c.a(intent));
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    static abstract class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final ComponentName f50900a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f50901b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f50902c;

        h(ComponentName componentName) {
            this.f50900a = componentName;
        }

        abstract void a(Intent intent);

        void b(int i11) {
            if (!this.f50901b) {
                this.f50901b = true;
                this.f50902c = i11;
            } else {
                if (this.f50902c == i11) {
                    return;
                }
                throw new IllegalArgumentException("Given job ID " + i11 + " is different than previous " + this.f50902c);
            }
        }

        public void c() {
        }

        public void d() {
        }

        public void e() {
        }
    }

    public JobIntentService() {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f50883g = null;
        } else {
            this.f50883g = new ArrayList();
        }
    }

    static h d(Context context, ComponentName componentName, boolean z10, int i11) {
        h cVar;
        HashMap map = f50876i;
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

    public static void enqueueWork(@NonNull Context context, @NonNull ComponentName componentName, int i11, @NonNull Intent intent) {
        if (intent == null) {
            throw new IllegalArgumentException("work must not be null");
        }
        synchronized (f50875h) {
            h hVarD = d(context, componentName, true, i11);
            hVarD.b(i11);
            try {
                hVarD.a(intent);
            } catch (IllegalStateException unused) {
            }
        }
    }

    public static void enqueueWork(@NonNull Context context, @NonNull Class cls, int i11, @NonNull Intent intent) {
        enqueueWork(context, new ComponentName(context, (Class<?>) cls), i11, intent);
    }

    e a() {
        b bVar = this.f50877a;
        if (bVar != null) {
            return bVar.b();
        }
        synchronized (this.f50883g) {
            try {
                if (this.f50883g.size() <= 0) {
                    return null;
                }
                return (e) this.f50883g.remove(0);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    boolean b() {
        a aVar = this.f50879c;
        if (aVar != null) {
            aVar.cancel(this.f50880d);
        }
        this.f50881e = true;
        return onStopCurrentWork();
    }

    void c(boolean z10) {
        if (this.f50879c == null) {
            this.f50879c = new a();
            h hVar = this.f50878b;
            if (hVar != null && z10) {
                hVar.d();
            }
            try {
                this.f50879c.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            } catch (Exception e11) {
                Log.e("JobIntentService", "RejectedExecutionException: rejected from java.util.concurrent.ThreadPoolExecutor", e11);
            }
        }
    }

    protected abstract void e(Intent intent);

    void f() {
        ArrayList arrayList = this.f50883g;
        if (arrayList != null) {
            synchronized (arrayList) {
                try {
                    this.f50879c = null;
                    ArrayList arrayList2 = this.f50883g;
                    if (arrayList2 != null && arrayList2.size() > 0) {
                        c(false);
                    } else if (!this.f50882f) {
                        this.f50878b.c();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public boolean isStopped() {
        return this.f50881e;
    }

    @Override // android.app.Service
    public IBinder onBind(@NonNull Intent intent) {
        b bVar = this.f50877a;
        if (bVar != null) {
            return bVar.a();
        }
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (Build.VERSION.SDK_INT >= 26) {
            this.f50877a = new f(this);
            this.f50878b = null;
        } else {
            this.f50877a = null;
            this.f50878b = d(this, new ComponentName(this, getClass()), false, 0);
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        ArrayList arrayList = this.f50883g;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.f50882f = true;
                this.f50878b.c();
            }
        }
    }

    @Override // android.app.Service
    public int onStartCommand(@Nullable Intent intent, int i11, int i12) {
        if (this.f50883g == null) {
            return 2;
        }
        this.f50878b.e();
        synchronized (this.f50883g) {
            ArrayList arrayList = this.f50883g;
            if (intent == null) {
                intent = new Intent();
            }
            arrayList.add(new d(intent, i12));
            c(true);
        }
        return 3;
    }

    public boolean onStopCurrentWork() {
        return true;
    }

    public void setInterruptIfStopped(boolean z10) {
        this.f50880d = z10;
    }
}
