package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.WorkSource;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.identity.ClientIdentity;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaf implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        WorkSource workSource = new WorkSource();
        ClientIdentity clientIdentity = null;
        boolean z10 = false;
        int i11 = 0;
        int i12 = 0;
        boolean z11 = false;
        long j11 = -1;
        float f11 = 0.0f;
        int i13 = Integer.MAX_VALUE;
        long j12 = Long.MAX_VALUE;
        long j13 = Long.MAX_VALUE;
        long j14 = 0;
        long j15 = 600000;
        long j16 = 3600000;
        int i14 = 102;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(header)) {
                case 1:
                    i14 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 2:
                    j16 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 3:
                    j15 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 4:
                case 14:
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
                case 5:
                    j12 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 6:
                    i13 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 7:
                    f11 = SafeParcelReader.readFloat(parcel, header);
                    break;
                case 8:
                    j14 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 9:
                    z10 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 10:
                    j13 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 11:
                    j11 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 12:
                    i11 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 13:
                    i12 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 15:
                    z11 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 16:
                    workSource = (WorkSource) SafeParcelReader.createParcelable(parcel, header, WorkSource.CREATOR);
                    break;
                case 17:
                    clientIdentity = (ClientIdentity) SafeParcelReader.createParcelable(parcel, header, ClientIdentity.CREATOR);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new LocationRequest(i14, j16, j15, j14, j12, j13, i13, f11, z10, j11, i11, i12, z11, workSource, clientIdentity);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i11) {
        return new LocationRequest[i11];
    }
}
