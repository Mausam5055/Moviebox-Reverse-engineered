package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class zzq implements Parcelable.Creator<zzo> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzo createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        String strCreateString = null;
        String strCreateString2 = null;
        String strCreateString3 = null;
        String strCreateString4 = null;
        String strCreateString5 = null;
        String strCreateString6 = null;
        String strCreateString7 = null;
        Boolean booleanObject = null;
        ArrayList<String> arrayListCreateStringList = null;
        String strCreateString8 = null;
        String strCreateString9 = null;
        String strCreateString10 = null;
        long j11 = 0;
        long j12 = 0;
        long j13 = 0;
        long j14 = 0;
        long j15 = 0;
        long j16 = 0;
        long j17 = 0;
        boolean z10 = true;
        boolean z11 = true;
        boolean z12 = false;
        int i11 = 0;
        boolean z13 = false;
        boolean z14 = false;
        int i12 = 0;
        long j18 = -2147483648L;
        String strCreateString11 = "";
        String strCreateString12 = strCreateString11;
        String strCreateString13 = strCreateString12;
        String strCreateString14 = strCreateString13;
        int i13 = 100;
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
                    strCreateString3 = SafeParcelReader.createString(parcel, header);
                    break;
                case 5:
                    strCreateString4 = SafeParcelReader.createString(parcel, header);
                    break;
                case 6:
                    j11 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 7:
                    j12 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 8:
                    strCreateString5 = SafeParcelReader.createString(parcel, header);
                    break;
                case 9:
                    z10 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 10:
                    z12 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 11:
                    j18 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 12:
                    strCreateString6 = SafeParcelReader.createString(parcel, header);
                    break;
                case 13:
                    j13 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 14:
                    j14 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 15:
                    i11 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 16:
                    z11 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 17:
                case 20:
                case 33:
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
                case 18:
                    z13 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 19:
                    strCreateString7 = SafeParcelReader.createString(parcel, header);
                    break;
                case 21:
                    booleanObject = SafeParcelReader.readBooleanObject(parcel, header);
                    break;
                case 22:
                    j15 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 23:
                    arrayListCreateStringList = SafeParcelReader.createStringList(parcel, header);
                    break;
                case 24:
                    strCreateString8 = SafeParcelReader.createString(parcel, header);
                    break;
                case 25:
                    strCreateString11 = SafeParcelReader.createString(parcel, header);
                    break;
                case 26:
                    strCreateString12 = SafeParcelReader.createString(parcel, header);
                    break;
                case 27:
                    strCreateString9 = SafeParcelReader.createString(parcel, header);
                    break;
                case 28:
                    z14 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case NOTIFICATION_REDIRECT_VALUE:
                    j16 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 30:
                    i13 = SafeParcelReader.readInt(parcel, header);
                    break;
                case TEMPLATE_HTML_SIZE_VALUE:
                    strCreateString13 = SafeParcelReader.createString(parcel, header);
                    break;
                case 32:
                    i12 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 34:
                    j17 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 35:
                    strCreateString10 = SafeParcelReader.createString(parcel, header);
                    break;
                case 36:
                    strCreateString14 = SafeParcelReader.createString(parcel, header);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new zzo(strCreateString, strCreateString2, strCreateString3, strCreateString4, j11, j12, strCreateString5, z10, z12, j18, strCreateString6, j13, j14, i11, z11, z13, strCreateString7, booleanObject, j15, arrayListCreateStringList, strCreateString8, strCreateString11, strCreateString12, strCreateString9, z14, j16, i13, strCreateString13, i12, j17, strCreateString10, strCreateString14);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzo[] newArray(int i11) {
        return new zzo[i11];
    }
}
