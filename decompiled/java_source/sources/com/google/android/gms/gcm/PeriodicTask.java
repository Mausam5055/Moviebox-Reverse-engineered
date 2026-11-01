package com.google.android.gms.gcm;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes3.dex */
public class PeriodicTask extends Task {
    public static final Parcelable.Creator<PeriodicTask> CREATOR = new zzk();
    protected long mFlexInSeconds;
    protected long mIntervalInSeconds;

    public static class Builder extends Task.Builder {
        private long zzao = -1;
        private long zzap = -1;

        public Builder() {
            this.isPersisted = true;
        }

        @Override // com.google.android.gms.gcm.Task.Builder
        public PeriodicTask build() {
            checkConditions();
            return new PeriodicTask(this, (zzk) null);
        }

        @Override // com.google.android.gms.gcm.Task.Builder
        protected void checkConditions() {
            super.checkConditions();
            long j11 = this.zzao;
            if (j11 == -1) {
                throw new IllegalArgumentException("Must call setPeriod(long) to establish an execution interval for this periodic task.");
            }
            if (j11 <= 0) {
                long j12 = this.zzao;
                StringBuilder sb2 = new StringBuilder(66);
                sb2.append("Period set cannot be less than or equal to 0: ");
                sb2.append(j12);
                throw new IllegalArgumentException(sb2.toString());
            }
            long j13 = this.zzap;
            if (j13 == -1) {
                this.zzap = (long) (j11 * 0.1f);
            } else if (j13 > j11) {
                this.zzap = j11;
            }
        }

        @Override // com.google.android.gms.gcm.Task.Builder
        public Builder setExtras(Bundle bundle) {
            this.extras = bundle;
            return this;
        }

        public Builder setFlex(long j11) {
            this.zzap = j11;
            return this;
        }

        public Builder setPeriod(long j11) {
            this.zzao = j11;
            return this;
        }

        @Override // com.google.android.gms.gcm.Task.Builder
        public Builder setPersisted(boolean z10) {
            this.isPersisted = z10;
            return this;
        }

        @Override // com.google.android.gms.gcm.Task.Builder
        public Builder setRequiredNetwork(int i11) {
            this.requiredNetworkState = i11;
            return this;
        }

        @Override // com.google.android.gms.gcm.Task.Builder
        public Builder setRequiresCharging(boolean z10) {
            this.requiresCharging = z10;
            return this;
        }

        @Override // com.google.android.gms.gcm.Task.Builder
        public Builder setService(Class<? extends GcmTaskService> cls) {
            this.gcmTaskService = cls.getName();
            return this;
        }

        @Override // com.google.android.gms.gcm.Task.Builder
        public /* bridge */ /* synthetic */ Task.Builder setService(Class cls) {
            return setService((Class<? extends GcmTaskService>) cls);
        }

        @Override // com.google.android.gms.gcm.Task.Builder
        public Builder setTag(String str) {
            this.tag = str;
            return this;
        }

        @Override // com.google.android.gms.gcm.Task.Builder
        public Builder setUpdateCurrent(boolean z10) {
            this.updateCurrent = z10;
            return this;
        }
    }

    @Deprecated
    private PeriodicTask(Parcel parcel) {
        super(parcel);
        this.mIntervalInSeconds = -1L;
        this.mFlexInSeconds = -1L;
        this.mIntervalInSeconds = parcel.readLong();
        this.mFlexInSeconds = Math.min(parcel.readLong(), this.mIntervalInSeconds);
    }

    /* synthetic */ PeriodicTask(Parcel parcel, zzk zzkVar) {
        this(parcel);
    }

    private PeriodicTask(Builder builder) {
        super(builder);
        this.mIntervalInSeconds = -1L;
        this.mFlexInSeconds = -1L;
        this.mIntervalInSeconds = builder.zzao;
        this.mFlexInSeconds = Math.min(builder.zzap, this.mIntervalInSeconds);
    }

    /* synthetic */ PeriodicTask(Builder builder, zzk zzkVar) {
        this(builder);
    }

    public long getFlex() {
        return this.mFlexInSeconds;
    }

    public long getPeriod() {
        return this.mIntervalInSeconds;
    }

    @Override // com.google.android.gms.gcm.Task
    public void toBundle(Bundle bundle) {
        super.toBundle(bundle);
        bundle.putLong("period", this.mIntervalInSeconds);
        bundle.putLong("period_flex", this.mFlexInSeconds);
    }

    public String toString() {
        String string = super.toString();
        long period = getPeriod();
        long flex = getFlex();
        StringBuilder sb2 = new StringBuilder(String.valueOf(string).length() + 54);
        sb2.append(string);
        sb2.append(" period=");
        sb2.append(period);
        sb2.append(" flex=");
        sb2.append(flex);
        return sb2.toString();
    }

    @Override // com.google.android.gms.gcm.Task, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        super.writeToParcel(parcel, i11);
        parcel.writeLong(this.mIntervalInSeconds);
        parcel.writeLong(this.mFlexInSeconds);
    }
}
