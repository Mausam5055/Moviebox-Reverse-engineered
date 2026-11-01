package com.google.android.material.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseBooleanArray;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes4.dex */
public class ParcelableSparseBooleanArray extends SparseBooleanArray implements Parcelable {
    public static final Parcelable.Creator<ParcelableSparseBooleanArray> CREATOR = new a();

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ParcelableSparseBooleanArray createFromParcel(Parcel parcel) {
            int i11 = parcel.readInt();
            ParcelableSparseBooleanArray parcelableSparseBooleanArray = new ParcelableSparseBooleanArray(i11);
            int[] iArr = new int[i11];
            boolean[] zArr = new boolean[i11];
            parcel.readIntArray(iArr);
            parcel.readBooleanArray(zArr);
            for (int i12 = 0; i12 < i11; i12++) {
                parcelableSparseBooleanArray.put(iArr[i12], zArr[i12]);
            }
            return parcelableSparseBooleanArray;
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public ParcelableSparseBooleanArray[] newArray(int i11) {
            return new ParcelableSparseBooleanArray[i11];
        }
    }

    public ParcelableSparseBooleanArray() {
    }

    public ParcelableSparseBooleanArray(int i11) {
        super(i11);
    }

    public ParcelableSparseBooleanArray(@NonNull SparseBooleanArray sparseBooleanArray) {
        super(sparseBooleanArray.size());
        for (int i11 = 0; i11 < sparseBooleanArray.size(); i11++) {
            put(sparseBooleanArray.keyAt(i11), sparseBooleanArray.valueAt(i11));
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i11) {
        int[] iArr = new int[size()];
        boolean[] zArr = new boolean[size()];
        for (int i12 = 0; i12 < size(); i12++) {
            iArr[i12] = keyAt(i12);
            zArr[i12] = valueAt(i12);
        }
        parcel.writeInt(size());
        parcel.writeIntArray(iArr);
        parcel.writeBooleanArray(zArr);
    }
}
