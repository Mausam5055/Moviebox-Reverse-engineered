package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.identity.zzer;

/* JADX INFO: loaded from: classes4.dex */
@SafeParcelable.Class(creator = "DeviceOrientationRequestCreator")
@SafeParcelable.Reserved({1, 3, 4, 5})
public final class DeviceOrientationRequest extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<DeviceOrientationRequest> CREATOR = new zzn();
    public static final long OUTPUT_PERIOD_DEFAULT = 20000;
    public static final long OUTPUT_PERIOD_FAST = 5000;
    public static final long OUTPUT_PERIOD_MEDIUM = 10000;

    @SafeParcelable.Field(getter = "getSamplingPeriodMicros", id = 2)
    private final long zza;

    @SafeParcelable.Field(defaultValueUnchecked = "false", getter = "isVelocityEnabled", id = 6)
    private final boolean zzb;

    public static final class Builder {
        private long zza;
        private final boolean zzb;

        public Builder(long j11) {
            this.zzb = false;
            setSamplingPeriodMicros(j11);
        }

        public Builder(@NonNull DeviceOrientationRequest deviceOrientationRequest) {
            this.zza = deviceOrientationRequest.zza();
            this.zzb = deviceOrientationRequest.zzb();
        }

        @NonNull
        public DeviceOrientationRequest build() {
            return new DeviceOrientationRequest(this.zza, this.zzb);
        }

        @NonNull
        public Builder setSamplingPeriodMicros(long j11) {
            boolean z10 = false;
            if (j11 >= 0 && j11 < Long.MAX_VALUE) {
                z10 = true;
            }
            StringBuilder sb2 = new StringBuilder(String.valueOf(j11).length() + 102);
            sb2.append("Invalid interval: ");
            sb2.append(j11);
            sb2.append(" should be greater than or equal to 0. Note: Long.MAX_VALUE is not a valid interval.");
            zzer.zzb(z10, sb2.toString());
            this.zza = j11;
            return this;
        }
    }

    @SafeParcelable.Constructor
    DeviceOrientationRequest(@SafeParcelable.Param(id = 2) long j11, @SafeParcelable.Param(id = 6) boolean z10) {
        this.zza = j11;
        this.zzb = z10;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DeviceOrientationRequest)) {
            return false;
        }
        DeviceOrientationRequest deviceOrientationRequest = (DeviceOrientationRequest) obj;
        return this.zza == deviceOrientationRequest.zza && this.zzb == deviceOrientationRequest.zzb;
    }

    public long getSamplingPeriodMicros() {
        return this.zza;
    }

    public int hashCode() {
        return Objects.hashCode(Long.valueOf(this.zza), Boolean.valueOf(this.zzb));
    }

    @NonNull
    public String toString() {
        long j11 = this.zza;
        int length = String.valueOf(j11).length();
        String str = true != this.zzb ? "" : ", withVelocity";
        StringBuilder sb2 = new StringBuilder(length + 46 + str.length() + 1);
        sb2.append("DeviceOrientationRequest[samplingPeriodMicros=");
        sb2.append(j11);
        sb2.append(str);
        sb2.append("]");
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i11) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeLong(parcel, 2, getSamplingPeriodMicros());
        SafeParcelWriter.writeBoolean(parcel, 6, this.zzb);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    final /* synthetic */ long zza() {
        return this.zza;
    }

    final /* synthetic */ boolean zzb() {
        return this.zzb;
    }
}
