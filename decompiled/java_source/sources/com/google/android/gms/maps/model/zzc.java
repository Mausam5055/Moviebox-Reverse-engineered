package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class zzc implements Parcelable.Creator<CircleOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CircleOptions createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        LatLng latLng = null;
        ArrayList arrayListCreateTypedList = null;
        double d11 = 0.0d;
        float f11 = 0.0f;
        float f12 = 0.0f;
        int i11 = 0;
        int i12 = 0;
        boolean z10 = false;
        boolean z11 = false;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(header)) {
                case 2:
                    latLng = (LatLng) SafeParcelReader.createParcelable(parcel, header, LatLng.CREATOR);
                    break;
                case 3:
                    d11 = SafeParcelReader.readDouble(parcel, header);
                    break;
                case 4:
                    f11 = SafeParcelReader.readFloat(parcel, header);
                    break;
                case 5:
                    i11 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 6:
                    i12 = SafeParcelReader.readInt(parcel, header);
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
                    arrayListCreateTypedList = SafeParcelReader.createTypedList(parcel, header, PatternItem.CREATOR);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new CircleOptions(latLng, d11, f11, i11, i12, f12, z10, z11, arrayListCreateTypedList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CircleOptions[] newArray(int i11) {
        return new CircleOptions[i11];
    }
}
