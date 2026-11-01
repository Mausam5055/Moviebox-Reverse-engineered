package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes4.dex */
public final class zzad implements Parcelable.Creator<zzae> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzae createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        String strCreateString = null;
        String strCreateString2 = null;
        zzon zzonVar = null;
        String strCreateString3 = null;
        zzbf zzbfVar = null;
        zzbf zzbfVar2 = null;
        zzbf zzbfVar3 = null;
        long j11 = 0;
        long j12 = 0;
        long j13 = 0;
        boolean z10 = false;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(header)) {
                case 2:
                    strCreateString = SafeParcelReader.createString(parcel, header);
                    break;
                case 3:
                    strCreateString2 = SafeParcelReader.createString(parcel, header);
                    break;
                case 4:
                    zzonVar = (zzon) SafeParcelReader.createParcelable(parcel, header, zzon.CREATOR);
                    break;
                case 5:
                    j11 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 6:
                    z10 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 7:
                    strCreateString3 = SafeParcelReader.createString(parcel, header);
                    break;
                case 8:
                    zzbfVar = (zzbf) SafeParcelReader.createParcelable(parcel, header, zzbf.CREATOR);
                    break;
                case 9:
                    j12 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 10:
                    zzbfVar2 = (zzbf) SafeParcelReader.createParcelable(parcel, header, zzbf.CREATOR);
                    break;
                case 11:
                    j13 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 12:
                    zzbfVar3 = (zzbf) SafeParcelReader.createParcelable(parcel, header, zzbf.CREATOR);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new zzae(strCreateString, strCreateString2, zzonVar, j11, z10, strCreateString3, zzbfVar, j12, zzbfVar2, j13, zzbfVar3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzae[] newArray(int i11) {
        return new zzae[i11];
    }
}
