package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes4.dex */
@SafeParcelable.Class(creator = "UserAttributeParcelCreator")
public final class zzon extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzon> CREATOR = new zzoq();

    @SafeParcelable.Field(id = 2)
    public final String zza;

    @SafeParcelable.Field(id = 3)
    public final long zzb;

    @Nullable
    @SafeParcelable.Field(id = 4)
    public final Long zzc;

    @Nullable
    @SafeParcelable.Field(id = 6)
    public final String zzd;

    @SafeParcelable.Field(id = 7)
    public final String zze;

    @Nullable
    @SafeParcelable.Field(id = 8)
    public final Double zzf;

    @SafeParcelable.Field(id = 1)
    private final int zzg;

    @SafeParcelable.Constructor
    zzon(@SafeParcelable.Param(id = 1) int i11, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) long j11, @Nullable @SafeParcelable.Param(id = 4) Long l11, @SafeParcelable.Param(id = 5) Float f11, @Nullable @SafeParcelable.Param(id = 6) String str2, @SafeParcelable.Param(id = 7) String str3, @Nullable @SafeParcelable.Param(id = 8) Double d11) {
        this.zzg = i11;
        this.zza = str;
        this.zzb = j11;
        this.zzc = l11;
        if (i11 == 1) {
            this.zzf = f11 != null ? Double.valueOf(f11.doubleValue()) : null;
        } else {
            this.zzf = d11;
        }
        this.zzd = str2;
        this.zze = str3;
    }

    zzon(zzop zzopVar) {
        this(zzopVar.zzc, zzopVar.zzd, zzopVar.zze, zzopVar.zzb);
    }

    zzon(String str, long j11, @Nullable Object obj, String str2) {
        Preconditions.checkNotEmpty(str);
        this.zzg = 2;
        this.zza = str;
        this.zzb = j11;
        this.zze = str2;
        if (obj == null) {
            this.zzc = null;
            this.zzf = null;
            this.zzd = null;
            return;
        }
        if (obj instanceof Long) {
            this.zzc = (Long) obj;
            this.zzf = null;
            this.zzd = null;
        } else if (obj instanceof String) {
            this.zzc = null;
            this.zzf = null;
            this.zzd = (String) obj;
        } else {
            if (!(obj instanceof Double)) {
                throw new IllegalArgumentException("User attribute given of un-supported type");
            }
            this.zzc = null;
            this.zzf = (Double) obj;
            this.zzd = null;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i11) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zzg);
        SafeParcelWriter.writeString(parcel, 2, this.zza, false);
        SafeParcelWriter.writeLong(parcel, 3, this.zzb);
        SafeParcelWriter.writeLongObject(parcel, 4, this.zzc, false);
        SafeParcelWriter.writeFloatObject(parcel, 5, null, false);
        SafeParcelWriter.writeString(parcel, 6, this.zzd, false);
        SafeParcelWriter.writeString(parcel, 7, this.zze, false);
        SafeParcelWriter.writeDoubleObject(parcel, 8, this.zzf, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    @Nullable
    public final Object zza() {
        Long l11 = this.zzc;
        if (l11 != null) {
            return l11;
        }
        Double d11 = this.zzf;
        if (d11 != null) {
            return d11;
        }
        String str = this.zzd;
        if (str != null) {
            return str;
        }
        return null;
    }
}
