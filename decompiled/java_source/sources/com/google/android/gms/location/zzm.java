package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes4.dex */
public final class zzm implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        float f11 = 0.0f;
        float f12 = 0.0f;
        float f13 = 0.0f;
        float f14 = 0.0f;
        byte b11 = 0;
        long j11 = 0;
        float[] fArrCreateFloatArray = null;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(header);
            if (fieldId != 1) {
                switch (fieldId) {
                    case 4:
                        f11 = SafeParcelReader.readFloat(parcel, header);
                        break;
                    case 5:
                        f12 = SafeParcelReader.readFloat(parcel, header);
                        break;
                    case 6:
                        j11 = SafeParcelReader.readLong(parcel, header);
                        break;
                    case 7:
                        b11 = SafeParcelReader.readByte(parcel, header);
                        break;
                    case 8:
                        f13 = SafeParcelReader.readFloat(parcel, header);
                        break;
                    case 9:
                        f14 = SafeParcelReader.readFloat(parcel, header);
                        break;
                    default:
                        SafeParcelReader.skipUnknownField(parcel, header);
                        break;
                }
            } else {
                fArrCreateFloatArray = SafeParcelReader.createFloatArray(parcel, header);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new DeviceOrientation(fArrCreateFloatArray, f11, f12, j11, b11, f13, f14);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i11) {
        return new DeviceOrientation[i11];
    }
}
