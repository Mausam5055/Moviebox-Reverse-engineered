package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes4.dex */
@SafeParcelable.Class(creator = "LatLngCreator")
@SafeParcelable.Reserved({1})
public final class LatLng extends AbstractSafeParcelable implements ReflectedParcelable {

    @KeepForSdk
    public static final Parcelable.Creator<LatLng> CREATOR = new zzf();

    @SafeParcelable.Field(id = 2)
    public final double latitude;

    @SafeParcelable.Field(id = 3)
    public final double longitude;

    @SafeParcelable.Constructor
    public LatLng(@SafeParcelable.Param(id = 2) double d11, @SafeParcelable.Param(id = 3) double d12) {
        if (-180.0d > d12 || d12 >= 180.0d) {
            this.longitude = ((((d12 - 180.0d) % 360.0d) + 360.0d) % 360.0d) - 180.0d;
        } else {
            this.longitude = d12;
        }
        this.latitude = Math.max(-90.0d, Math.min(90.0d, d11));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LatLng)) {
            return false;
        }
        LatLng latLng = (LatLng) obj;
        return Double.doubleToLongBits(this.latitude) == Double.doubleToLongBits(latLng.latitude) && Double.doubleToLongBits(this.longitude) == Double.doubleToLongBits(latLng.longitude);
    }

    public final int hashCode() {
        long jDoubleToLongBits = Double.doubleToLongBits(this.latitude);
        int i11 = ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32))) + 31;
        long jDoubleToLongBits2 = Double.doubleToLongBits(this.longitude);
        return (i11 * 31) + ((int) ((jDoubleToLongBits2 >>> 32) ^ jDoubleToLongBits2));
    }

    public final String toString() {
        double d11 = this.latitude;
        double d12 = this.longitude;
        StringBuilder sb2 = new StringBuilder(60);
        sb2.append("lat/lng: (");
        sb2.append(d11);
        sb2.append(",");
        sb2.append(d12);
        sb2.append(")");
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i11) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeDouble(parcel, 2, this.latitude);
        SafeParcelWriter.writeDouble(parcel, 3, this.longitude);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
