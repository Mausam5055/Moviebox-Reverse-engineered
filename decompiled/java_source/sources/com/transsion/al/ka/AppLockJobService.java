package com.transsion.al.ka;

import android.app.job.JobParameters;
import android.app.job.JobService;
import com.tn.lib.thread.ThreadPool;

/* JADX INFO: loaded from: classes5.dex */
public class AppLockJobService extends JobService {
    private static final String TAG = "AppLockJobService";
    private int kJobId = 2;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onStartJob$0() {
        JobUtils.startAppLockJobService(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onStopJob$1() {
        JobUtils.startAppLockJobService(this);
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        ThreadPool.e().d(new Runnable() { // from class: com.transsion.al.ka.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f42468a.lambda$onStartJob$0();
            }
        });
        return false;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        ThreadPool.e().d(new Runnable() { // from class: com.transsion.al.ka.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f42469a.lambda$onStopJob$1();
            }
        });
        return true;
    }
}
