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
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
@SafeParcelable.Class(creator = "DeviceOrientationCreator")
@SafeParcelable.Reserved({2, 3})
public class DeviceOrientation extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<DeviceOrientation> CREATOR = new zzm();

    @SafeParcelable.Field(getter = "getAttitude", id = 1)
    private final float[] zza;

    @SafeParcelable.Field(getter = "getHeadingDegrees", id = 4)
    private final float zzb;

    @SafeParcelable.Field(getter = "getHeadingErrorDegrees", id = 5)
    private final float zzc;

    @SafeParcelable.Field(getter = "getElapsedRealtimeNs", id = 6)
    private final long zzd;

    @SafeParcelable.Field(getter = "getFieldMask", id = 7)
    private final byte zze;

    @SafeParcelable.Field(getter = "getConservativeHeadingErrorVonMisesKappa", id = 8)
    private final float zzf;

    @SafeParcelable.Field(getter = "getConservativeHeadingErrorDegrees", id = 9)
    private final float zzg;

    public static final class Builder {
        private final float[] zza;
        private float zzb;
        private float zzc;
        private long zzd;
        private byte zze;
        private float zzf;
        private float zzg;

        public Builder(@NonNull DeviceOrientation deviceOrientation) {
            this.zze = (byte) 0;
            DeviceOrientation.zzj(deviceOrientation.zzc());
            this.zza = Arrays.copyOf(deviceOrientation.zzc(), deviceOrientation.zzc().length);
            setHeadingDegrees(deviceOrientation.zzd());
            setHeadingErrorDegrees(deviceOrientation.zze());
            setConservativeHeadingErrorDegrees(deviceOrientation.zzi());
            setElapsedRealtimeNs(deviceOrientation.zzf());
            this.zzf = deviceOrientation.zzh();
            this.zze = deviceOrientation.zzg();
        }

        public Builder(@NonNull float[] fArr, float f11, float f12, long j11) {
            this.zze = (byte) 0;
            DeviceOrientation.zzj(fArr);
            this.zza = Arrays.copyOf(fArr, fArr.length);
            setHeadingDegrees(f11);
            setHeadingErrorDegrees(f12);
            setElapsedRealtimeNs(j11);
            this.zzf = 0.0f;
            this.zzg = 180.0f;
            this.zze = (byte) 0;
        }

        @NonNull
        public DeviceOrientation build() {
            return new DeviceOrientation(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg);
        }

        @NonNull
        public Builder clearConservativeHeadingErrorDegrees() {
            this.zzg = 180.0f;
            int i11 = this.zze & (-65);
            this.zzf = 0.0f;
            this.zze = (byte) (((byte) i11) & (-33));
            return this;
        }

        @NonNull
        public Builder setAttitude(@NonNull float[] fArr) {
            DeviceOrientation.zzj(fArr);
            System.arraycopy(fArr, 0, this.zza, 0, fArr.length);
            return this;
        }

        @NonNull
        public Builder setConservativeHeadingErrorDegrees(float f11) {
            boolean z10 = false;
            if (f11 >= 0.0f && f11 <= 180.0f) {
                z10 = true;
            }
            zzer.zzb(z10, "conservativeHeadingErrorDegrees should be between 0 and 180.");
            this.zzg = f11;
            this.zze = (byte) (this.zze | 64);
            Parcelable.Creator<DeviceOrientation> creator = DeviceOrientation.CREATOR;
            this.zzf = f11 < 180.0f ? (float) (2.0d / (1.0d - Math.cos(Math.toRadians(f11)))) : 0.0f;
            this.zze = (byte) (this.zze | 32);
            return this;
        }

        @NonNull
        public Builder setElapsedRealtimeNs(long j11) {
            zzer.zzb(j11 >= 0, "elapsedRealtimeNs should be greater than or equal to 0.");
            this.zzd = j11;
            return this;
        }

        @NonNull
        public Builder setHeadingDegrees(float f11) {
            boolean z10 = false;
            if (f11 >= 0.0f && f11 < 360.0f) {
                z10 = true;
            }
            zzer.zzb(z10, "headingDegrees should be greater than or equal to 0 and less than 360.");
            this.zzb = f11;
            return this;
        }

        @NonNull
        public Builder setHeadingErrorDegrees(float f11) {
            boolean z10 = false;
            if (f11 >= 0.0f && f11 <= 180.0f) {
                z10 = true;
            }
            zzer.zzb(z10, "headingErrorDegrees should be between 0 and 180.");
            this.zzc = f11;
            return this;
        }
    }

    @SafeParcelable.Constructor
    DeviceOrientation(@SafeParcelable.Param(id = 1) float[] fArr, @SafeParcelable.Param(id = 4) float f11, @SafeParcelable.Param(id = 5) float f12, @SafeParcelable.Param(id = 6) long j11, @SafeParcelable.Param(id = 7) byte b11, @SafeParcelable.Param(id = 8) float f13, @SafeParcelable.Param(id = 9) float f14) {
        zzj(fArr);
        zzer.zza(f11 >= 0.0f && f11 < 360.0f);
        zzer.zza(f12 >= 0.0f && f12 <= 180.0f);
        zzer.zza(f14 >= 0.0f && f14 <= 180.0f);
        zzer.zza(j11 >= 0);
        this.zza = fArr;
        this.zzb = f11;
        this.zzc = f12;
        this.zzf = f13;
        this.zzg = f14;
        this.zzd = j11;
        this.zze = (byte) (((byte) (((byte) (b11 | 16)) | 4)) | 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzj(float[] fArr) {
        zzer.zzb(fArr != null && fArr.length == 4, "Input attitude array should be of length 4.");
        zzer.zzb((Float.isNaN(fArr[0]) || Float.isNaN(fArr[1]) || Float.isNaN(fArr[2]) || Float.isNaN(fArr[3])) ? false : true, "Input attitude cannot contain NaNs.");
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DeviceOrientation)) {
            return false;
        }
        DeviceOrientation deviceOrientation = (DeviceOrientation) obj;
        return Float.compare(this.zzb, deviceOrientation.zzb) == 0 && Float.compare(this.zzc, deviceOrientation.zzc) == 0 && (zza() == deviceOrientation.zza() && (!zza() || Float.compare(this.zzf, deviceOrientation.zzf) == 0)) && (hasConservativeHeadingErrorDegrees() == deviceOrientation.hasConservativeHeadingErrorDegrees() && (!hasConservativeHeadingErrorDegrees() || Float.compare(getConservativeHeadingErrorDegrees(), deviceOrientation.getConservativeHeadingErrorDegrees()) == 0)) && this.zzd == deviceOrientation.zzd && Arrays.equals(this.zza, deviceOrientation.zza);
    }

    @NonNull
    public float[] getAttitude() {
        return (float[]) this.zza.clone();
    }

    public float getConservativeHeadingErrorDegrees() {
        return this.zzg;
    }

    public long getElapsedRealtimeNs() {
        return this.zzd;
    }

    public float getHeadingDegrees() {
        return this.zzb;
    }

    public float getHeadingErrorDegrees() {
        return this.zzc;
    }

    public boolean hasConservativeHeadingErrorDegrees() {
        return (this.zze & 64) != 0;
    }

    public int hashCode() {
        return Objects.hashCode(Float.valueOf(this.zzb), Float.valueOf(this.zzc), Float.valueOf(this.zzg), Long.valueOf(this.zzd), this.zza, Byte.valueOf(this.zze));
    }

    @NonNull
    public String toString() {
        StringBuilder sb2 = new StringBuilder("DeviceOrientation[");
        sb2.append("attitude=");
        sb2.append(Arrays.toString(this.zza));
        sb2.append(", headingDegrees=");
        sb2.append(this.zzb);
        sb2.append(", headingErrorDegrees=");
        sb2.append(this.zzc);
        if (hasConservativeHeadingErrorDegrees()) {
            sb2.append(", conservativeHeadingErrorDegrees=");
            sb2.append(this.zzg);
        }
        sb2.append(", elapsedRealtimeNs=");
        sb2.append(this.zzd);
        sb2.append(']');
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i11) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeFloatArray(parcel, 1, getAttitude(), false);
        SafeParcelWriter.writeFloat(parcel, 4, getHeadingDegrees());
        SafeParcelWriter.writeFloat(parcel, 5, getHeadingErrorDegrees());
        SafeParcelWriter.writeLong(parcel, 6, getElapsedRealtimeNs());
        SafeParcelWriter.writeByte(parcel, 7, this.zze);
        SafeParcelWriter.writeFloat(parcel, 8, this.zzf);
        SafeParcelWriter.writeFloat(parcel, 9, getConservativeHeadingErrorDegrees());
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final boolean zza() {
        return (this.zze & 32) != 0;
    }

    final /* synthetic */ float[] zzc() {
        return this.zza;
    }

    final /* synthetic */ float zzd() {
        return this.zzb;
    }

    final /* synthetic */ float zze() {
        return this.zzc;
    }

    final /* synthetic */ long zzf() {
        return this.zzd;
    }

    final /* synthetic */ byte zzg() {
        return this.zze;
    }

    final /* synthetic */ float zzh() {
        return this.zzf;
    }

    final /* synthetic */ float zzi() {
        return this.zzg;
    }
}
