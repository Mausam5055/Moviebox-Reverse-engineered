package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.identity.ClientIdentity;

/* JADX INFO: loaded from: classes4.dex */
@SafeParcelable.Class(creator = "LocationAvailabilityRequestCreator")
public final class zzad extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzad> CREATOR = new zzae();

    @SafeParcelable.Field(defaultValue = "false", getter = "isBypass", id = 1)
    private final boolean zza;

    @Nullable
    @SafeParcelable.Field(getter = "getImpersonation", id = 2)
    private final ClientIdentity zzb;

    @SafeParcelable.Constructor
    zzad(@SafeParcelable.Param(id = 1) boolean z10, @Nullable @SafeParcelable.Param(id = 2) ClientIdentity clientIdentity) {
        this.zza = z10;
        this.zzb = clientIdentity;
    }

    public final boolean equals(@Nullable Object obj) {
        if (!(obj instanceof zzad)) {
            return false;
        }
        zzad zzadVar = (zzad) obj;
        return this.zza == zzadVar.zza && Objects.equal(this.zzb, zzadVar.zzb);
    }

    public final int hashCode() {
        return Objects.hashCode(Boolean.valueOf(this.zza));
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("LocationAvailabilityRequest[");
        if (this.zza) {
            sb2.append("bypass, ");
        }
        if (this.zzb != null) {
            sb2.append("impersonation=");
            sb2.append(this.zzb);
            sb2.append(", ");
        }
        sb2.setLength(sb2.length() - 2);
        sb2.append(']');
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i11) {
        boolean z10 = this.zza;
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 1, z10);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zzb, i11, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
