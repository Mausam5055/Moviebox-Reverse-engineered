package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.WorkSource;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.WorkSourceUtil;
import com.google.android.gms.internal.identity.ClientIdentity;
import com.google.android.gms.internal.identity.zzeo;

/* JADX INFO: loaded from: classes4.dex */
@SafeParcelable.Class(creator = "LocationRequestCreator")
@SafeParcelable.Reserved({4, 5, 14, 1000})
public final class LocationRequest extends AbstractSafeParcelable implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<LocationRequest> CREATOR = new zzaf();

    @Deprecated
    public static final int PRIORITY_BALANCED_POWER_ACCURACY = 102;

    @Deprecated
    public static final int PRIORITY_HIGH_ACCURACY = 100;

    @Deprecated
    public static final int PRIORITY_LOW_POWER = 104;

    @Deprecated
    public static final int PRIORITY_NO_POWER = 105;

    @SafeParcelable.Field(defaultValueUnchecked = "Priority.PRIORITY_BALANCED_POWER_ACCURACY", getter = "getPriority", id = 1)
    private int zza;

    @SafeParcelable.Field(defaultValue = "3600000", getter = "getIntervalMillis", id = 2)
    private long zzb;

    @SafeParcelable.Field(defaultValue = "600000", getter = "getMinUpdateIntervalMillis", id = 3)
    private long zzc;

    @SafeParcelable.Field(defaultValue = "0", getter = "getMaxUpdateDelayMillis", id = 8)
    private long zzd;

    @SafeParcelable.Field(defaultValueUnchecked = "Long.MAX_VALUE", getter = "getDurationMillis", id = 10)
    private long zze;

    @SafeParcelable.Field(defaultValueUnchecked = "Integer.MAX_VALUE", getter = "getMaxUpdates", id = 6)
    private int zzf;

    @SafeParcelable.Field(defaultValue = "0", getter = "getMinUpdateDistanceMeters", id = 7)
    private float zzg;

    @SafeParcelable.Field(defaultValue = "false", getter = "isWaitForAccurateLocation", id = 9)
    private boolean zzh;

    @SafeParcelable.Field(defaultValueUnchecked = TmcConstants.COLD_OPEN_TYPE, getter = "getMaxUpdateAgeMillis", id = 11)
    private long zzi;

    @SafeParcelable.Field(defaultValueUnchecked = "Granularity.GRANULARITY_PERMISSION_LEVEL", getter = "getGranularity", id = 12)
    private final int zzj;

    @SafeParcelable.Field(defaultValueUnchecked = "ThrottleBehavior.THROTTLE_BACKGROUND", getter = "getThrottleBehavior", id = 13)
    private final int zzk;

    @SafeParcelable.Field(defaultValue = "false", getter = "isBypass", id = 15)
    private final boolean zzl;

    @SafeParcelable.Field(defaultValueUnchecked = "new android.os.WorkSource()", getter = "getWorkSource", id = 16)
    private final WorkSource zzm;

    @Nullable
    @SafeParcelable.Field(getter = "getImpersonation", id = 17)
    private final ClientIdentity zzn;

    public static final class Builder {
        public static final long IMPLICIT_MAX_UPDATE_AGE = -1;
        public static final long IMPLICIT_MIN_UPDATE_INTERVAL = -1;
        private int zza;
        private long zzb;
        private long zzc;
        private long zzd;
        private long zze;
        private int zzf;
        private float zzg;
        private boolean zzh;
        private long zzi;
        private int zzj;
        private int zzk;
        private boolean zzl;

        @Nullable
        private WorkSource zzm;

        @Nullable
        private ClientIdentity zzn;

        public Builder(int i11, long j11) {
            this(j11);
            setPriority(i11);
        }

        public Builder(long j11) {
            this.zza = 102;
            this.zzc = -1L;
            this.zzd = 0L;
            this.zze = Long.MAX_VALUE;
            this.zzf = Integer.MAX_VALUE;
            this.zzg = 0.0f;
            this.zzh = true;
            this.zzi = -1L;
            this.zzj = 0;
            this.zzk = 0;
            this.zzl = false;
            this.zzm = null;
            this.zzn = null;
            setIntervalMillis(j11);
        }

        public Builder(@NonNull LocationRequest locationRequest) {
            this(locationRequest.getPriority(), locationRequest.getIntervalMillis());
            setMinUpdateIntervalMillis(locationRequest.getMinUpdateIntervalMillis());
            setMaxUpdateDelayMillis(locationRequest.getMaxUpdateDelayMillis());
            setDurationMillis(locationRequest.getDurationMillis());
            setMaxUpdates(locationRequest.getMaxUpdates());
            setMinUpdateDistanceMeters(locationRequest.getMinUpdateDistanceMeters());
            setWaitForAccurateLocation(locationRequest.isWaitForAccurateLocation());
            setMaxUpdateAgeMillis(locationRequest.getMaxUpdateAgeMillis());
            setGranularity(locationRequest.getGranularity());
            int iZza = locationRequest.zza();
            zzar.zza(iZza);
            this.zzk = iZza;
            this.zzl = locationRequest.zzb();
            this.zzm = locationRequest.zzc();
            ClientIdentity clientIdentityZzd = locationRequest.zzd();
            boolean z10 = true;
            if (clientIdentityZzd != null && clientIdentityZzd.zza()) {
                z10 = false;
            }
            Preconditions.checkArgument(z10);
            this.zzn = clientIdentityZzd;
        }

        @NonNull
        public LocationRequest build() {
            int i11 = this.zza;
            long j11 = this.zzb;
            long jMin = this.zzc;
            if (jMin == -1) {
                jMin = j11;
            } else if (i11 != 105) {
                jMin = Math.min(jMin, j11);
            }
            long jMax = Math.max(this.zzd, this.zzb);
            long j12 = this.zze;
            int i12 = this.zzf;
            float f11 = this.zzg;
            boolean z10 = this.zzh;
            long j13 = this.zzi;
            return new LocationRequest(i11, j11, jMin, jMax, Long.MAX_VALUE, j12, i12, f11, z10, j13 == -1 ? this.zzb : j13, this.zzj, this.zzk, this.zzl, new WorkSource(this.zzm), this.zzn);
        }

        @NonNull
        public Builder setDurationMillis(long j11) {
            Preconditions.checkArgument(j11 > 0, "durationMillis must be greater than 0");
            this.zze = j11;
            return this;
        }

        @NonNull
        public Builder setGranularity(int i11) {
            zzq.zza(i11);
            this.zzj = i11;
            return this;
        }

        @NonNull
        public Builder setIntervalMillis(long j11) {
            Preconditions.checkArgument(j11 >= 0, "intervalMillis must be greater than or equal to 0");
            this.zzb = j11;
            return this;
        }

        @NonNull
        public Builder setMaxUpdateAgeMillis(long j11) {
            boolean z10 = true;
            if (j11 != -1 && j11 < 0) {
                z10 = false;
            }
            Preconditions.checkArgument(z10, "maxUpdateAgeMillis must be greater than or equal to 0, or IMPLICIT_MAX_UPDATE_AGE");
            this.zzi = j11;
            return this;
        }

        @NonNull
        public Builder setMaxUpdateDelayMillis(long j11) {
            Preconditions.checkArgument(j11 >= 0, "maxUpdateDelayMillis must be greater than or equal to 0");
            this.zzd = j11;
            return this;
        }

        @NonNull
        public Builder setMaxUpdates(int i11) {
            Preconditions.checkArgument(i11 > 0, "maxUpdates must be greater than 0");
            this.zzf = i11;
            return this;
        }

        @NonNull
        public Builder setMinUpdateDistanceMeters(float f11) {
            Preconditions.checkArgument(f11 >= 0.0f, "minUpdateDistanceMeters must be greater than or equal to 0");
            this.zzg = f11;
            return this;
        }

        @NonNull
        public Builder setMinUpdateIntervalMillis(long j11) {
            boolean z10 = true;
            if (j11 != -1 && j11 < 0) {
                z10 = false;
            }
            Preconditions.checkArgument(z10, "minUpdateIntervalMillis must be greater than or equal to 0, or IMPLICIT_MIN_UPDATE_INTERVAL");
            this.zzc = j11;
            return this;
        }

        @NonNull
        public Builder setPriority(int i11) {
            zzan.zza(i11);
            this.zza = i11;
            return this;
        }

        @NonNull
        public Builder setWaitForAccurateLocation(boolean z10) {
            this.zzh = z10;
            return this;
        }

        @NonNull
        public final Builder zza(int i11) {
            zzar.zza(i11);
            this.zzk = i11;
            return this;
        }

        @NonNull
        public final Builder zzb(boolean z10) {
            this.zzl = z10;
            return this;
        }

        @NonNull
        public final Builder zzc(@Nullable WorkSource workSource) {
            this.zzm = workSource;
            return this;
        }
    }

    @Deprecated
    public LocationRequest() {
        this(102, 3600000L, 600000L, 0L, Long.MAX_VALUE, Long.MAX_VALUE, Integer.MAX_VALUE, 0.0f, true, 3600000L, 0, 0, false, new WorkSource(), null);
    }

    @SafeParcelable.Constructor
    LocationRequest(@SafeParcelable.Param(id = 1) int i11, @SafeParcelable.Param(id = 2) long j11, @SafeParcelable.Param(id = 3) long j12, @SafeParcelable.Param(id = 8) long j13, @SafeParcelable.RemovedParam(defaultValueUnchecked = "Long.MAX_VALUE", id = 5) long j14, @SafeParcelable.Param(id = 10) long j15, @SafeParcelable.Param(id = 6) int i12, @SafeParcelable.Param(id = 7) float f11, @SafeParcelable.Param(id = 9) boolean z10, @SafeParcelable.Param(id = 11) long j16, @SafeParcelable.Param(id = 12) int i13, @SafeParcelable.Param(id = 13) int i14, @SafeParcelable.Param(id = 15) boolean z11, @SafeParcelable.Param(id = 16) WorkSource workSource, @Nullable @SafeParcelable.Param(id = 17) ClientIdentity clientIdentity) {
        long j17;
        this.zza = i11;
        if (i11 == 105) {
            this.zzb = Long.MAX_VALUE;
            j17 = j11;
        } else {
            j17 = j11;
            this.zzb = j17;
        }
        this.zzc = j12;
        this.zzd = j13;
        this.zze = j14 == Long.MAX_VALUE ? j15 : Math.min(Math.max(1L, j14 - SystemClock.elapsedRealtime()), j15);
        this.zzf = i12;
        this.zzg = f11;
        this.zzh = z10;
        this.zzi = j16 != -1 ? j16 : j17;
        this.zzj = i13;
        this.zzk = i14;
        this.zzl = z11;
        this.zzm = workSource;
        this.zzn = clientIdentity;
    }

    @NonNull
    @Deprecated
    public static LocationRequest create() {
        return new LocationRequest(102, 3600000L, 600000L, 0L, Long.MAX_VALUE, Long.MAX_VALUE, Integer.MAX_VALUE, 0.0f, true, 3600000L, 0, 0, false, new WorkSource(), null);
    }

    private static String zze(long j11) {
        return j11 == Long.MAX_VALUE ? "∞" : zzeo.zzb(j11);
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof LocationRequest) {
            LocationRequest locationRequest = (LocationRequest) obj;
            if (this.zza == locationRequest.zza && ((isPassive() || this.zzb == locationRequest.zzb) && this.zzc == locationRequest.zzc && isBatched() == locationRequest.isBatched() && ((!isBatched() || this.zzd == locationRequest.zzd) && this.zze == locationRequest.zze && this.zzf == locationRequest.zzf && this.zzg == locationRequest.zzg && this.zzh == locationRequest.zzh && this.zzj == locationRequest.zzj && this.zzk == locationRequest.zzk && this.zzl == locationRequest.zzl && this.zzm.equals(locationRequest.zzm) && Objects.equal(this.zzn, locationRequest.zzn)))) {
                return true;
            }
        }
        return false;
    }

    public long getDurationMillis() {
        return this.zze;
    }

    @Deprecated
    public long getExpirationTime() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j11 = this.zze;
        long j12 = jElapsedRealtime + j11;
        if (((jElapsedRealtime ^ j12) & (j11 ^ j12)) < 0) {
            return Long.MAX_VALUE;
        }
        return j12;
    }

    @Deprecated
    public long getFastestInterval() {
        return getMinUpdateIntervalMillis();
    }

    public int getGranularity() {
        return this.zzj;
    }

    @Deprecated
    public long getInterval() {
        return getIntervalMillis();
    }

    public long getIntervalMillis() {
        return this.zzb;
    }

    public long getMaxUpdateAgeMillis() {
        return this.zzi;
    }

    public long getMaxUpdateDelayMillis() {
        return this.zzd;
    }

    public int getMaxUpdates() {
        return this.zzf;
    }

    @Deprecated
    public long getMaxWaitTime() {
        return Math.max(this.zzd, this.zzb);
    }

    public float getMinUpdateDistanceMeters() {
        return this.zzg;
    }

    public long getMinUpdateIntervalMillis() {
        return this.zzc;
    }

    @Deprecated
    public int getNumUpdates() {
        return getMaxUpdates();
    }

    public int getPriority() {
        return this.zza;
    }

    @Deprecated
    public float getSmallestDisplacement() {
        return getMinUpdateDistanceMeters();
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.zza), Long.valueOf(this.zzb), Long.valueOf(this.zzc), this.zzm);
    }

    public boolean isBatched() {
        long j11 = this.zzd;
        return j11 > 0 && (j11 >> 1) >= this.zzb;
    }

    @Deprecated
    public boolean isFastestIntervalExplicitlySet() {
        return true;
    }

    public boolean isPassive() {
        return this.zza == 105;
    }

    public boolean isWaitForAccurateLocation() {
        return this.zzh;
    }

    @NonNull
    @Deprecated
    public LocationRequest setExpirationDuration(long j11) {
        Preconditions.checkArgument(j11 > 0, "durationMillis must be greater than 0");
        this.zze = j11;
        return this;
    }

    @NonNull
    @Deprecated
    public LocationRequest setExpirationTime(long j11) {
        this.zze = Math.max(1L, j11 - SystemClock.elapsedRealtime());
        return this;
    }

    @NonNull
    @Deprecated
    public LocationRequest setFastestInterval(long j11) {
        Preconditions.checkArgument(j11 >= 0, "illegal fastest interval: %d", Long.valueOf(j11));
        this.zzc = j11;
        return this;
    }

    @NonNull
    @Deprecated
    public LocationRequest setInterval(long j11) {
        Preconditions.checkArgument(j11 >= 0, "intervalMillis must be greater than or equal to 0");
        long j12 = this.zzc;
        long j13 = this.zzb;
        if (j12 == j13 / 6) {
            this.zzc = j11 / 6;
        }
        if (this.zzi == j13) {
            this.zzi = j11;
        }
        this.zzb = j11;
        return this;
    }

    @NonNull
    @Deprecated
    public LocationRequest setMaxWaitTime(long j11) {
        Preconditions.checkArgument(j11 >= 0, "illegal max wait time: %d", Long.valueOf(j11));
        this.zzd = j11;
        return this;
    }

    @NonNull
    @Deprecated
    public LocationRequest setNumUpdates(int i11) {
        if (i11 > 0) {
            this.zzf = i11;
            return this;
        }
        StringBuilder sb2 = new StringBuilder(String.valueOf(i11).length() + 20);
        sb2.append("invalid numUpdates: ");
        sb2.append(i11);
        throw new IllegalArgumentException(sb2.toString());
    }

    @NonNull
    @Deprecated
    public LocationRequest setPriority(int i11) {
        zzan.zza(i11);
        this.zza = i11;
        return this;
    }

    @NonNull
    @Deprecated
    public LocationRequest setSmallestDisplacement(float f11) {
        if (f11 >= 0.0f) {
            this.zzg = f11;
            return this;
        }
        StringBuilder sb2 = new StringBuilder(String.valueOf(f11).length() + 22);
        sb2.append("invalid displacement: ");
        sb2.append(f11);
        throw new IllegalArgumentException(sb2.toString());
    }

    @NonNull
    @Deprecated
    public LocationRequest setWaitForAccurateLocation(boolean z10) {
        this.zzh = z10;
        return this;
    }

    @NonNull
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Request[");
        if (isPassive()) {
            sb2.append(zzan.zzb(this.zza));
            if (this.zzd > 0) {
                sb2.append("/");
                zzeo.zzc(this.zzd, sb2);
            }
        } else {
            sb2.append("@");
            if (isBatched()) {
                zzeo.zzc(this.zzb, sb2);
                sb2.append("/");
                zzeo.zzc(this.zzd, sb2);
            } else {
                zzeo.zzc(this.zzb, sb2);
            }
            sb2.append(" ");
            sb2.append(zzan.zzb(this.zza));
        }
        if (isPassive() || this.zzc != this.zzb) {
            sb2.append(", minUpdateInterval=");
            sb2.append(zze(this.zzc));
        }
        if (this.zzg > 0.0d) {
            sb2.append(", minUpdateDistance=");
            sb2.append(this.zzg);
        }
        if (!isPassive() ? this.zzi != this.zzb : this.zzi != Long.MAX_VALUE) {
            sb2.append(", maxUpdateAge=");
            sb2.append(zze(this.zzi));
        }
        if (this.zze != Long.MAX_VALUE) {
            sb2.append(", duration=");
            zzeo.zzc(this.zze, sb2);
        }
        if (this.zzf != Integer.MAX_VALUE) {
            sb2.append(", maxUpdates=");
            sb2.append(this.zzf);
        }
        if (this.zzk != 0) {
            sb2.append(", ");
            sb2.append(zzar.zzb(this.zzk));
        }
        if (this.zzj != 0) {
            sb2.append(", ");
            sb2.append(zzq.zzb(this.zzj));
        }
        if (this.zzh) {
            sb2.append(", waitForAccurateLocation");
        }
        if (this.zzl) {
            sb2.append(", bypass");
        }
        if (!WorkSourceUtil.isEmpty(this.zzm)) {
            sb2.append(", ");
            sb2.append(this.zzm);
        }
        if (this.zzn != null) {
            sb2.append(", impersonation=");
            sb2.append(this.zzn);
        }
        sb2.append(']');
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i11) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, getPriority());
        SafeParcelWriter.writeLong(parcel, 2, getIntervalMillis());
        SafeParcelWriter.writeLong(parcel, 3, getMinUpdateIntervalMillis());
        SafeParcelWriter.writeInt(parcel, 6, getMaxUpdates());
        SafeParcelWriter.writeFloat(parcel, 7, getMinUpdateDistanceMeters());
        SafeParcelWriter.writeLong(parcel, 8, getMaxUpdateDelayMillis());
        SafeParcelWriter.writeBoolean(parcel, 9, isWaitForAccurateLocation());
        SafeParcelWriter.writeLong(parcel, 10, getDurationMillis());
        SafeParcelWriter.writeLong(parcel, 11, getMaxUpdateAgeMillis());
        SafeParcelWriter.writeInt(parcel, 12, getGranularity());
        SafeParcelWriter.writeInt(parcel, 13, this.zzk);
        SafeParcelWriter.writeBoolean(parcel, 15, this.zzl);
        SafeParcelWriter.writeParcelable(parcel, 16, this.zzm, i11, false);
        SafeParcelWriter.writeParcelable(parcel, 17, this.zzn, i11, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final int zza() {
        return this.zzk;
    }

    public final boolean zzb() {
        return this.zzl;
    }

    @NonNull
    public final WorkSource zzc() {
        return this.zzm;
    }

    @Nullable
    public final ClientIdentity zzd() {
        return this.zzn;
    }
}
