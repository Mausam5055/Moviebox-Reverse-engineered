package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes4.dex */
public final class zzao implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        boolean z10 = false;
        int i18 = 0;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(header)) {
                case 1:
                    i11 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 2:
                    i12 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 3:
                    i13 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 4:
                    i14 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 5:
                    i15 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 6:
                    i16 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 7:
                    i17 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 8:
                    z10 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 9:
                    i18 = SafeParcelReader.readInt(parcel, header);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new SleepClassifyEvent(i11, i12, i13, i14, i15, i16, i17, z10, i18);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i11) {
        return new SleepClassifyEvent[i11];
    }
}
