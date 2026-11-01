package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes4.dex */
public final class zzab implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        boolean z10 = false;
        zzal[] zzalVarArr = null;
        long j11 = 0;
        int i11 = 1;
        int i12 = 1;
        int i13 = 1000;
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
                    j11 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 4:
                    i13 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 5:
                    zzalVarArr = (zzal[]) SafeParcelReader.createTypedArray(parcel, header, zzal.CREATOR);
                    break;
                case 6:
                    z10 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new LocationAvailability(i13, i11, i12, j11, zzalVarArr, z10);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i11) {
        return new LocationAvailability[i11];
    }
}
