package com.google.android.exoplayer2.scheduler;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import android.os.PersistableBundle;
import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;

/* JADX INFO: loaded from: classes3.dex */
public final class PlatformScheduler$PlatformSchedulerService extends JobService {
    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        PersistableBundle extras = jobParameters.getExtras();
        int notMetRequirements = new Requirements(extras.getInt("requirements")).getNotMetRequirements(this);
        if (notMetRequirements == 0) {
            p0.V0(this, new Intent((String) a.e(extras.getString("service_action"))).setPackage((String) a.e(extras.getString("service_package"))));
            return false;
        }
        s.i("PlatformScheduler", "Requirements not met: " + notMetRequirements);
        jobFinished(jobParameters, true);
        return false;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        return false;
    }
}
