package androidx.media3.exoplayer.scheduler;

import android.app.job.JobInfo;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobService;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PersistableBundle;
import androidx.media3.common.util.a;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.u;
import f2.f;

/* JADX INFO: loaded from: classes2.dex */
public final class PlatformScheduler implements f {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f12581d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f12582a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ComponentName f12583b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final JobScheduler f12584c;

    public static final class PlatformSchedulerService extends JobService {
        @Override // android.app.job.JobService
        public boolean onStartJob(JobParameters jobParameters) {
            PersistableBundle extras = jobParameters.getExtras();
            int notMetRequirements = new Requirements(extras.getInt("requirements")).getNotMetRequirements(this);
            if (notMetRequirements == 0) {
                a1.r1(this, new Intent((String) a.e(extras.getString("service_action"))).setPackage((String) a.e(extras.getString("service_package"))));
                return false;
            }
            u.h("PlatformScheduler", "Requirements not met: " + notMetRequirements);
            jobFinished(jobParameters, true);
            return false;
        }

        @Override // android.app.job.JobService
        public boolean onStopJob(JobParameters jobParameters) {
            return false;
        }
    }

    static {
        f12581d = (a1.f10350a >= 26 ? 16 : 0) | 15;
    }

    public PlatformScheduler(Context context, int i11) {
        Context applicationContext = context.getApplicationContext();
        this.f12582a = i11;
        this.f12583b = new ComponentName(applicationContext, (Class<?>) PlatformSchedulerService.class);
        this.f12584c = (JobScheduler) a.e((JobScheduler) applicationContext.getSystemService("jobscheduler"));
    }

    private static JobInfo c(int i11, ComponentName componentName, Requirements requirements, String str, String str2) {
        Requirements requirementsFilterRequirements = requirements.filterRequirements(f12581d);
        if (!requirementsFilterRequirements.equals(requirements)) {
            u.h("PlatformScheduler", "Ignoring unsupported requirements: " + (requirementsFilterRequirements.getRequirements() ^ requirements.getRequirements()));
        }
        JobInfo.Builder builder = new JobInfo.Builder(i11, componentName);
        if (requirements.isUnmeteredNetworkRequired()) {
            builder.setRequiredNetworkType(2);
        } else if (requirements.isNetworkRequired()) {
            builder.setRequiredNetworkType(1);
        }
        builder.setRequiresDeviceIdle(requirements.isIdleRequired());
        builder.setRequiresCharging(requirements.isChargingRequired());
        if (a1.f10350a >= 26 && requirements.isStorageNotLowRequired()) {
            builder.setRequiresStorageNotLow(true);
        }
        builder.setPersisted(true);
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString("service_action", str);
        persistableBundle.putString("service_package", str2);
        persistableBundle.putInt("requirements", requirements.getRequirements());
        builder.setExtras(persistableBundle);
        return builder.build();
    }

    @Override // f2.f
    public boolean a(Requirements requirements, String str, String str2) {
        return this.f12584c.schedule(c(this.f12582a, this.f12583b, requirements, str2, str)) == 1;
    }

    @Override // f2.f
    public Requirements b(Requirements requirements) {
        return requirements.filterRequirements(f12581d);
    }

    @Override // f2.f
    public boolean cancel() {
        this.f12584c.cancel(this.f12582a);
        return true;
    }
}
