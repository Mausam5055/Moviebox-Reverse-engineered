package com.vungle.ads.internal.task;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import com.vungle.ads.internal.util.o;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class VungleJobRunner implements d {
    private final com.vungle.ads.internal.task.b creator;
    private final Executor executor;
    private long nextCheck;
    private final List<b> pendingJobs;
    private final Runnable pendingRunnable;
    private final f threadPriorityHelper;
    public static final a Companion = new a(null);
    private static final Handler handler = new Handler(Looper.getMainLooper());
    private static final String TAG = VungleJobRunner.class.getSimpleName();

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\b\u0010\t\u001a\u00020\nH\u0016R \u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0005¨\u0006\u000b"}, d2 = {"Lcom/vungle/ads/internal/task/VungleJobRunner$PendingRunnable;", "Ljava/lang/Runnable;", "runner", "Ljava/lang/ref/WeakReference;", "Lcom/vungle/ads/internal/task/VungleJobRunner;", "(Ljava/lang/ref/WeakReference;)V", "getRunner", "()Ljava/lang/ref/WeakReference;", "setRunner", "run", "", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    private static final class PendingRunnable implements Runnable {
        private WeakReference<VungleJobRunner> runner;

        public PendingRunnable(WeakReference<VungleJobRunner> runner) {
            Intrinsics.h(runner, "runner");
            this.runner = runner;
        }

        public final WeakReference<VungleJobRunner> getRunner() {
            return this.runner;
        }

        @Override // java.lang.Runnable
        public void run() {
            VungleJobRunner vungleJobRunner = this.runner.get();
            if (vungleJobRunner != null) {
                vungleJobRunner.executePendingJobs();
            }
        }

        public final void setRunner(WeakReference<VungleJobRunner> weakReference) {
            Intrinsics.h(weakReference, "<set-?>");
            this.runner = weakReference;
        }
    }

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private static final class b {
        private c info;
        private final long uptimeMillis;

        public b(long j11, c cVar) {
            this.uptimeMillis = j11;
            this.info = cVar;
        }

        public final c getInfo() {
            return this.info;
        }

        public final long getUptimeMillis() {
            return this.uptimeMillis;
        }

        public final void setInfo(c cVar) {
            this.info = cVar;
        }
    }

    public VungleJobRunner(com.vungle.ads.internal.task.b creator, Executor executor, f fVar) {
        Intrinsics.h(creator, "creator");
        Intrinsics.h(executor, "executor");
        this.creator = creator;
        this.executor = executor;
        this.threadPriorityHelper = fVar;
        this.nextCheck = Long.MAX_VALUE;
        this.pendingJobs = new CopyOnWriteArrayList();
        this.pendingRunnable = new PendingRunnable(new WeakReference(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void executePendingJobs() {
        try {
            long jUptimeMillis = SystemClock.uptimeMillis();
            long jMin = Long.MAX_VALUE;
            for (b bVar : this.pendingJobs) {
                if (jUptimeMillis >= bVar.getUptimeMillis()) {
                    this.pendingJobs.remove(bVar);
                    c info = bVar.getInfo();
                    if (info != null) {
                        this.executor.execute(new JobRunnable(info, this.creator, this, this.threadPriorityHelper));
                    }
                } else {
                    jMin = Math.min(jMin, bVar.getUptimeMillis());
                }
            }
            if (jMin != Long.MAX_VALUE && jMin != this.nextCheck) {
                Handler handler2 = handler;
                handler2.removeCallbacks(this.pendingRunnable);
                handler2.postAtTime(this.pendingRunnable, TAG, jMin);
            }
            this.nextCheck = jMin;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.vungle.ads.internal.task.d
    public synchronized void cancelPendingJob(String tag) {
        try {
            Intrinsics.h(tag, "tag");
            ArrayList arrayList = new ArrayList();
            for (b bVar : this.pendingJobs) {
                c info = bVar.getInfo();
                if (Intrinsics.c(info != null ? info.getJobTag() : null, tag)) {
                    arrayList.add(bVar);
                }
            }
            this.pendingJobs.removeAll(arrayList);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.vungle.ads.internal.task.d
    public synchronized void execute(c jobInfo) {
        try {
            Intrinsics.h(jobInfo, "jobInfo");
            c cVarCopy = jobInfo.copy();
            if (cVarCopy != null) {
                String jobTag = cVarCopy.getJobTag();
                long delay = cVarCopy.getDelay();
                cVarCopy.setDelay(0L);
                if (cVarCopy.getUpdateCurrent()) {
                    for (b bVar : this.pendingJobs) {
                        c info = bVar.getInfo();
                        if (Intrinsics.c(info != null ? info.getJobTag() : null, jobTag)) {
                            o.a aVar = o.Companion;
                            String TAG2 = TAG;
                            Intrinsics.g(TAG2, "TAG");
                            aVar.d(TAG2, "replacing pending job with new " + jobTag);
                            this.pendingJobs.remove(bVar);
                        }
                    }
                }
                this.pendingJobs.add(new b(SystemClock.uptimeMillis() + delay, cVarCopy));
                executePendingJobs();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final int getPendingJobSize$vungle_ads_release() {
        return this.pendingJobs.size();
    }
}
