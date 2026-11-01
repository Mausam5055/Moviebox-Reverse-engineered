package com.vungle.ads.internal.task;

import android.os.Bundle;
import android.os.Process;
import com.hisavana.common.tracking.TrackingKey;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import com.vungle.ads.internal.util.o;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u0000 \u00182\u00020\u0001:\u0001\u0019B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u000fR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0010R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0011R\u0016\u0010\t\u001a\u0004\u0018\u00010\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0012R\u001a\u0010\u0017\u001a\u00020\u00138VX\u0096\u0004¢\u0006\f\u0012\u0004\b\u0016\u0010\u000e\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u001a"}, d2 = {"Lcom/vungle/ads/internal/task/JobRunnable;", "Lcom/vungle/ads/internal/task/PriorityRunnable;", "Lcom/vungle/ads/internal/task/c;", "jobinfo", "Lcom/vungle/ads/internal/task/b;", "creator", "Lcom/vungle/ads/internal/task/d;", "jobRunner", "Lcom/vungle/ads/internal/task/f;", "threadPriorityHelper", "<init>", "(Lcom/vungle/ads/internal/task/c;Lcom/vungle/ads/internal/task/b;Lcom/vungle/ads/internal/task/d;Lcom/vungle/ads/internal/task/f;)V", "", "run", "()V", "Lcom/vungle/ads/internal/task/c;", "Lcom/vungle/ads/internal/task/b;", "Lcom/vungle/ads/internal/task/d;", "Lcom/vungle/ads/internal/task/f;", "", "getPriority", "()I", "getPriority$annotations", TrackingKey.PRIORITY, "Companion", "a", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class JobRunnable extends PriorityRunnable {
    private static final String TAG = JobRunnable.class.getSimpleName();
    private final b creator;
    private final d jobRunner;
    private final c jobinfo;
    private final f threadPriorityHelper;

    public JobRunnable(c jobinfo, b creator, d jobRunner, f fVar) {
        Intrinsics.h(jobinfo, "jobinfo");
        Intrinsics.h(creator, "creator");
        Intrinsics.h(jobRunner, "jobRunner");
        this.jobinfo = jobinfo;
        this.creator = creator;
        this.jobRunner = jobRunner;
        this.threadPriorityHelper = fVar;
    }

    public static /* synthetic */ void getPriority$annotations() {
    }

    @Override // com.vungle.ads.internal.task.PriorityRunnable
    public int getPriority() {
        return this.jobinfo.getPriority();
    }

    @Override // java.lang.Runnable
    public void run() {
        f fVar = this.threadPriorityHelper;
        if (fVar != null) {
            try {
                int iMakeAndroidThreadPriority = fVar.makeAndroidThreadPriority(this.jobinfo);
                Process.setThreadPriority(iMakeAndroidThreadPriority);
                o.a aVar = o.Companion;
                String TAG2 = TAG;
                Intrinsics.g(TAG2, "TAG");
                aVar.d(TAG2, "Setting process thread prio = " + iMakeAndroidThreadPriority + " for " + this.jobinfo.getJobTag());
            } catch (Throwable unused) {
                o.a aVar2 = o.Companion;
                String TAG3 = TAG;
                Intrinsics.g(TAG3, "TAG");
                aVar2.e(TAG3, "Error on setting process thread priority");
            }
        }
        try {
            String jobTag = this.jobinfo.getJobTag();
            Bundle extras = this.jobinfo.getExtras();
            o.a aVar3 = o.Companion;
            String TAG4 = TAG;
            Intrinsics.g(TAG4, "TAG");
            aVar3.d(TAG4, "Start job " + jobTag + "Thread " + Thread.currentThread().getName());
            int iOnRunJob = this.creator.create(jobTag).onRunJob(extras, this.jobRunner);
            Intrinsics.g(TAG4, "TAG");
            aVar3.d(TAG4, "On job finished " + jobTag + " with result " + iOnRunJob);
            if (iOnRunJob == 2) {
                long jMakeNextRescedule = this.jobinfo.makeNextRescedule();
                if (jMakeNextRescedule > 0) {
                    this.jobinfo.setDelay(jMakeNextRescedule);
                    this.jobRunner.execute(this.jobinfo);
                    Intrinsics.g(TAG4, "TAG");
                    aVar3.d(TAG4, "Rescheduling " + jobTag + " in " + jMakeNextRescedule);
                }
            }
        } catch (Exception e11) {
            o.a aVar4 = o.Companion;
            String TAG5 = TAG;
            Intrinsics.g(TAG5, "TAG");
            aVar4.e(TAG5, "Cannot create job" + e11.getLocalizedMessage());
        }
    }
}
