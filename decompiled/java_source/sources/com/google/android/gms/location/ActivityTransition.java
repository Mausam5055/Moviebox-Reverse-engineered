package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes4.dex */
@SafeParcelable.Class(creator = "ActivityTransitionCreator")
@SafeParcelable.Reserved({1000})
public class ActivityTransition extends AbstractSafeParcelable {
    public static final int ACTIVITY_TRANSITION_ENTER = 0;
    public static final int ACTIVITY_TRANSITION_EXIT = 1;

    @NonNull
    public static final Parcelable.Creator<ActivityTransition> CREATOR = new zze();

    @SafeParcelable.Field(getter = "getActivityType", id = 1)
    private final int zza;

    @SafeParcelable.Field(getter = "getTransitionType", id = 2)
    private final int zzb;

    public static class Builder {
        private int zza = -1;
        private int zzb = -1;

        @NonNull
        public ActivityTransition build() {
            Preconditions.checkState(this.zza != -1, "Activity type not set.");
            Preconditions.checkState(this.zzb != -1, "Activity transition type not set.");
            return new ActivityTransition(this.zza, this.zzb);
        }

        @NonNull
        public Builder setActivityTransition(int i11) {
            ActivityTransition.zza(i11);
            this.zzb = i11;
            return this;
        }

        @NonNull
        public Builder setActivityType(int i11) {
            this.zza = i11;
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface SupportedActivityTransition {
    }

    @SafeParcelable.Constructor
    ActivityTransition(@SafeParcelable.Param(id = 1) int i11, @SafeParcelable.Param(id = 2) int i12) {
        this.zza = i11;
        this.zzb = i12;
    }

    public static void zza(int i11) {
        boolean z10 = false;
        if (i11 >= 0 && i11 <= 1) {
            z10 = true;
        }
        StringBuilder sb2 = new StringBuilder(String.valueOf(i11).length() + 30);
        sb2.append("Transition type ");
        sb2.append(i11);
        sb2.append(" is not valid.");
        Preconditions.checkArgument(z10, sb2.toString());
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ActivityTransition)) {
            return false;
        }
        ActivityTransition activityTransition = (ActivityTransition) obj;
        return this.zza == activityTransition.zza && this.zzb == activityTransition.zzb;
    }

    public int getActivityType() {
        return this.zza;
    }

    public int getTransitionType() {
        return this.zzb;
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.zza), Integer.valueOf(this.zzb));
    }

    @NonNull
    public String toString() {
        int i11 = this.zza;
        int length = String.valueOf(i11).length();
        int i12 = this.zzb;
        StringBuilder sb2 = new StringBuilder(length + 52 + String.valueOf(i12).length() + 1);
        sb2.append("ActivityTransition [mActivityType=");
        sb2.append(i11);
        sb2.append(", mTransitionType=");
        sb2.append(i12);
        sb2.append("]");
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i11) {
        Preconditions.checkNotNull(parcel);
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, getActivityType());
        SafeParcelWriter.writeInt(parcel, 2, getTransitionType());
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
