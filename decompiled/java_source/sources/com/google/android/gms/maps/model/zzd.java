package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes4.dex */
public final class zzd implements Parcelable.Creator<GroundOverlayOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GroundOverlayOptions createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        IBinder iBinder = null;
        LatLng latLng = null;
        LatLngBounds latLngBounds = null;
        float f11 = 0.0f;
        float f12 = 0.0f;
        float f13 = 0.0f;
        float f14 = 0.0f;
        float f15 = 0.0f;
        float f16 = 0.0f;
        float f17 = 0.0f;
        boolean z10 = false;
        boolean z11 = false;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(header)) {
                case 2:
                    iBinder = SafeParcelReader.readIBinder(parcel, header);
                    break;
                case 3:
                    latLng = (LatLng) SafeParcelReader.createParcelable(parcel, header, LatLng.CREATOR);
                    break;
                case 4:
                    f11 = SafeParcelReader.readFloat(parcel, header);
                    break;
                case 5:
                    f12 = SafeParcelReader.readFloat(parcel, header);
                    break;
                case 6:
                    latLngBounds = (LatLngBounds) SafeParcelReader.createParcelable(parcel, header, LatLngBounds.CREATOR);
                    break;
                case 7:
                    f13 = SafeParcelReader.readFloat(parcel, header);
                    break;
                case 8:
                    f14 = SafeParcelReader.readFloat(parcel, header);
                    break;
                case 9:
                    z10 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 10:
                    f15 = SafeParcelReader.readFloat(parcel, header);
                    break;
                case 11:
                    f16 = SafeParcelReader.readFloat(parcel, header);
                    break;
                case 12:
                    f17 = SafeParcelReader.readFloat(parcel, header);
                    break;
                case 13:
                    z11 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new GroundOverlayOptions(iBinder, latLng, f11, f12, latLngBounds, f13, f14, z10, f15, f16, f17, z11);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GroundOverlayOptions[] newArray(int i11) {
        return new GroundOverlayOptions[i11];
    }
}
