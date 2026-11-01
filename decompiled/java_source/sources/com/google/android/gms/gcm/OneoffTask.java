package com.google.android.gms.gcm;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes3.dex */
public class OneoffTask extends Task {
    public static final Parcelable.Creator<OneoffTask> CREATOR = new zzi();
    private final long zzal;
    private final long zzam;

    public static class Builder extends Task.Builder {
        private long zzal = -1;
        private long zzam = -1;

        public Builder() {
            this.isPersisted = false;
        }

        @Override // com.google.android.gms.gcm.Task.Builder
        public OneoffTask build() {
            checkConditions();
            return new OneoffTask(this, (zzi) null);
        }

        @Override // com.google.android.gms.gcm.Task.Builder
        protected void checkConditions() {
            super.checkConditions();
            long j11 = this.zzal;
            if (j11 != -1) {
                long j12 = this.zzam;
                if (j12 != -1) {
                    if (j11 >= j12) {
                        throw new IllegalArgumentException("Window start must be shorter than window end.");
                    }
                    return;
                }
            }
            throw new IllegalArgumentException("Must specify an execution window using setExecutionWindow.");
        }

        public Builder setExecutionWindow(long j11, long j12) {
            this.zzal = j11;
            this.zzam = j12;
            return this;
        }

        @Override // com.google.android.gms.gcm.Task.Builder
        public Builder setExtras(Bundle bundle) {
            this.extras = bundle;
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
    private OneoffTask(Parcel parcel) {
        super(parcel);
        this.zzal = parcel.readLong();
        this.zzam = parcel.readLong();
    }

    /* synthetic */ OneoffTask(Parcel parcel, zzi zziVar) {
        this(parcel);
    }

    private OneoffTask(Builder builder) {
        super(builder);
        this.zzal = builder.zzal;
        this.zzam = builder.zzam;
    }

    /* synthetic */ OneoffTask(Builder builder, zzi zziVar) {
        this(builder);
    }

    public long getWindowEnd() {
        return this.zzam;
    }

    public long getWindowStart() {
        return this.zzal;
    }

    @Override // com.google.android.gms.gcm.Task
    public void toBundle(Bundle bundle) {
        super.toBundle(bundle);
        bundle.putLong("window_start", this.zzal);
        bundle.putLong("window_end", this.zzam);
    }

    public String toString() {
        String string = super.toString();
        long windowStart = getWindowStart();
        long windowEnd = getWindowEnd();
        StringBuilder sb2 = new StringBuilder(String.valueOf(string).length() + 64);
        sb2.append(string);
        sb2.append(" windowStart=");
        sb2.append(windowStart);
        sb2.append(" windowEnd=");
        sb2.append(windowEnd);
        return sb2.toString();
    }

    @Override // com.google.android.gms.gcm.Task, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        super.writeToParcel(parcel, i11);
        parcel.writeLong(this.zzal);
        parcel.writeLong(this.zzam);
    }
}
