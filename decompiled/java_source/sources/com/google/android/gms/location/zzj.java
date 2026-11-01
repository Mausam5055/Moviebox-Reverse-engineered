package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.WorkSource;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.identity.ClientIdentity;

/* JADX INFO: loaded from: classes4.dex */
public final class zzj implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        WorkSource workSource = new WorkSource();
        ClientIdentity clientIdentity = null;
        int i11 = 0;
        boolean z10 = false;
        int i12 = 0;
        long j11 = Long.MAX_VALUE;
        long j12 = Long.MAX_VALUE;
        int i13 = 102;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(header)) {
                case 1:
                    j11 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 2:
                    i11 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 3:
                    i13 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 4:
                    j12 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 5:
                    z10 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 6:
                    workSource = (WorkSource) SafeParcelReader.createParcelable(parcel, header, WorkSource.CREATOR);
                    break;
                case 7:
                    i12 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 8:
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
                case 9:
                    clientIdentity = (ClientIdentity) SafeParcelReader.createParcelable(parcel, header, ClientIdentity.CREATOR);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new CurrentLocationRequest(j11, i11, i13, j12, z10, i12, workSource, clientIdentity);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i11) {
        return new CurrentLocationRequest[i11];
    }
}
