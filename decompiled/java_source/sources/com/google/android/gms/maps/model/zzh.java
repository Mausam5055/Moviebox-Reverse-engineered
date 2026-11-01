package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes4.dex */
public final class zzh implements Parcelable.Creator<MarkerOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ MarkerOptions createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        LatLng latLng = null;
        String strCreateString = null;
        String strCreateString2 = null;
        IBinder iBinder = null;
        float f11 = 0.0f;
        float f12 = 0.0f;
        float f13 = 0.0f;
        float f14 = 0.0f;
        float f15 = 0.0f;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        float f16 = 0.5f;
        float f17 = 1.0f;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(header)) {
                case 2:
                    latLng = (LatLng) SafeParcelReader.createParcelable(parcel, header, LatLng.CREATOR);
                    break;
                case 3:
                    strCreateString = SafeParcelReader.createString(parcel, header);
                    break;
                case 4:
                    strCreateString2 = SafeParcelReader.createString(parcel, header);
                    break;
                case 5:
                    iBinder = SafeParcelReader.readIBinder(parcel, header);
                    break;
                case 6:
                    f11 = SafeParcelReader.readFloat(parcel, header);
                    break;
                case 7:
                    f12 = SafeParcelReader.readFloat(parcel, header);
                    break;
                case 8:
                    z10 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 9:
                    z11 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 10:
                    z12 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 11:
                    f13 = SafeParcelReader.readFloat(parcel, header);
                    break;
                case 12:
                    f16 = SafeParcelReader.readFloat(parcel, header);
                    break;
                case 13:
                    f14 = SafeParcelReader.readFloat(parcel, header);
                    break;
                case 14:
                    f17 = SafeParcelReader.readFloat(parcel, header);
                    break;
                case 15:
                    f15 = SafeParcelReader.readFloat(parcel, header);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new MarkerOptions(latLng, strCreateString, strCreateString2, iBinder, f11, f12, z10, z11, z12, f13, f16, f14, f17, f15);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ MarkerOptions[] newArray(int i11) {
        return new MarkerOptions[i11];
    }
}
