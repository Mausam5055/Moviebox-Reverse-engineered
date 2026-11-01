package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.util.Base64;
import com.google.android.datatransport.runtime.o;
import com.google.android.datatransport.runtime.t;
import com.hisavana.common.tracking.TrackingKey;

/* JADX INFO: loaded from: classes.dex */
public class JobInfoSchedulerService extends JobService {
    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(JobParameters jobParameters) {
        jobFinished(jobParameters, false);
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(final JobParameters jobParameters) {
        String string = jobParameters.getExtras().getString("backendName");
        String string2 = jobParameters.getExtras().getString("extras");
        int i11 = jobParameters.getExtras().getInt(TrackingKey.PRIORITY);
        int i12 = jobParameters.getExtras().getInt("attemptNumber");
        t.f(getApplicationContext());
        o.a aVarD = o.a().b(string).d(d9.a.b(i11));
        if (string2 != null) {
            aVarD.c(Base64.decode(string2, 0));
        }
        t.c().e().v(aVarD.a(), i12, new Runnable() { // from class: z8.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f79307a.b(jobParameters);
            }
        });
        return true;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        return true;
    }
}
