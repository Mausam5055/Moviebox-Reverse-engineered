package com.vungle.ads.internal.task;

import android.os.Bundle;
import com.vungle.ads.internal.util.o;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class c implements Cloneable {
    public static final a Companion = new a(null);
    private static final String TAG = "JobInfo";
    private long delay;
    private Bundle extras;
    private final String jobTag;
    private long nextRescheduleTimeout;
    private int priority;
    private int requiredNetworkType;
    private int reschedulePolicy;
    private long rescheduleTimeout;
    private boolean updateCurrent;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public c(String jobTag) {
        Intrinsics.h(jobTag, "jobTag");
        this.jobTag = jobTag;
        this.extras = new Bundle();
        this.reschedulePolicy = 1;
        this.priority = 2;
    }

    public static /* synthetic */ void getPriority$annotations() {
    }

    public static /* synthetic */ void getRequiredNetworkType$annotations() {
    }

    private static /* synthetic */ void getReschedulePolicy$annotations() {
    }

    public Object clone() {
        return super.clone();
    }

    public final c copy() {
        try {
            Object objClone = super.clone();
            Intrinsics.f(objClone, "null cannot be cast to non-null type com.vungle.ads.internal.task.JobInfo");
            return (c) objClone;
        } catch (CloneNotSupportedException e11) {
            o.Companion.e(TAG, "Cannot copy JobInfo " + this, e11);
            return null;
        }
    }

    public final long getDelay() {
        return this.delay;
    }

    public final Bundle getExtras() {
        return this.extras;
    }

    public final String getJobTag() {
        return this.jobTag;
    }

    public final int getPriority() {
        return this.priority;
    }

    public final int getRequiredNetworkType() {
        return this.requiredNetworkType;
    }

    public final boolean getUpdateCurrent() {
        return this.updateCurrent;
    }

    public final long makeNextRescedule() {
        long j11 = this.rescheduleTimeout;
        if (j11 == 0) {
            return 0L;
        }
        long j12 = this.nextRescheduleTimeout;
        if (j12 == 0) {
            this.nextRescheduleTimeout = j11;
        } else if (this.reschedulePolicy == 1) {
            this.nextRescheduleTimeout = j12 * ((long) 2);
        }
        return this.nextRescheduleTimeout;
    }

    public final c setDelay(long j11) {
        this.delay = j11;
        return this;
    }

    public final c setExtras(Bundle extras) {
        Intrinsics.h(extras, "extras");
        this.extras = extras;
        return this;
    }

    public final c setPriority(int i11) {
        this.priority = i11;
        return this;
    }

    public final c setRequiredNetworkType(int i11) {
        this.requiredNetworkType = i11;
        return this;
    }

    public final c setReschedulePolicy(long j11, int i11) {
        this.rescheduleTimeout = j11;
        this.reschedulePolicy = i11;
        return this;
    }

    public final c setUpdateCurrent(boolean z10) {
        this.updateCurrent = z10;
        return this;
    }
}
