package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class zzk implements Parcelable.Creator<PolygonOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PolygonOptions createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayListCreateTypedList = null;
        float f11 = 0.0f;
        int i11 = 0;
        int i12 = 0;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        int i13 = 0;
        float f12 = 0.0f;
        ArrayList arrayListCreateTypedList2 = null;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(header)) {
                case 2:
                    arrayListCreateTypedList2 = SafeParcelReader.createTypedList(parcel, header, LatLng.CREATOR);
                    break;
                case 3:
                    SafeParcelReader.readList(parcel, header, arrayList, zzk.class.getClassLoader());
                    break;
                case 4:
                    f12 = SafeParcelReader.readFloat(parcel, header);
                    break;
                case 5:
                    i11 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 6:
                    i12 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 7:
                    f11 = SafeParcelReader.readFloat(parcel, header);
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
                    i13 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 12:
                    arrayListCreateTypedList = SafeParcelReader.createTypedList(parcel, header, PatternItem.CREATOR);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new PolygonOptions(arrayListCreateTypedList2, arrayList, f12, i11, i12, f11, z10, z11, z12, i13, arrayListCreateTypedList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PolygonOptions[] newArray(int i11) {
        return new PolygonOptions[i11];
    }
}
